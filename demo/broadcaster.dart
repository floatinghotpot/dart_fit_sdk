import 'dart:io';
import 'package:fit_sdk/fit_sdk.dart';

/// Example demonstrating how to use the MesgBroadcaster for type-safe message handling
// Example demonstrating how to use the MesgBroadcaster for type-safe message handling
void main() async {
  print('FIT Message Broadcaster Example\n');

  // Create decoder and broadcaster
  final decoder = Decode();
  final broadcaster = MesgBroadcaster();

  // Statistics
  int fileIdCount = 0;
  int recordCount = 0;
  int lapCount = 0;
  int sessionCount = 0;

  // Listen to File ID messages
  broadcaster.addListener(MesgNum.fileId, (sender, args) {
    var mesg = args.mesg as FileIdMesg;
    fileIdCount++;
    print('\n=== File ID Message ===');
    print('Type: ${mesg.getType()}');
    print('Manufacturer: ${mesg.getManufacturer()}');
    print('Product: ${mesg.getProduct()}');
    print('Serial Number: ${mesg.getSerialNumber()}');
    if (mesg.getTimeCreated() != null) {
      print('Created: ${mesg.getTimeCreated()}');
    }
  });

  // Listen to Record messages (GPS data points)
  broadcaster.addListener(MesgNum.record, (sender, args) {
    var mesg = args.mesg as RecordMesg;
    recordCount++;
    if (recordCount == 1 || recordCount % 10 == 0) {
      print('\n--- Record #$recordCount ---');
      if (mesg.getTimestamp() != null) {
        print('Time: ${mesg.getTimestamp()}');
      }
      if (mesg.getPositionLat() != null && mesg.getPositionLong() != null) {
        print('Position: ${mesg.getPositionLat()}, ${mesg.getPositionLong()}');
      }
      if (mesg.getDistance() != null) {
        print('Distance: ${mesg.getDistance()} m');
      }
      if (mesg.getHeartRate() != null) {
        print('Heart Rate: ${mesg.getHeartRate()} bpm');
      }
      if (mesg.getCadence() != null) {
        print('Cadence: ${mesg.getCadence()} rpm');
      }
      if (mesg.getSpeed() != null) {
        print('Speed: ${mesg.getSpeed()} m/s');
      }
    }
  });

  // Listen to Lap messages
  broadcaster.addListener(MesgNum.lap, (sender, args) {
    var mesg = args.mesg as LapMesg;
    lapCount++;
    print('\n=== Lap #$lapCount ===');
    if (mesg.getTotalElapsedTime() != null) {
      print('Elapsed Time: ${mesg.getTotalElapsedTime()} seconds');
    }
    if (mesg.getTotalDistance() != null) {
      print('Distance: ${mesg.getTotalDistance()} m');
    }
    if (mesg.getAvgHeartRate() != null) {
      print('Avg Heart Rate: ${mesg.getAvgHeartRate()} bpm');
    }
    if (mesg.getMaxHeartRate() != null) {
      print('Max Heart Rate: ${mesg.getMaxHeartRate()} bpm');
    }
  });

  // Listen to Session messages
  broadcaster.addListener(MesgNum.session, (sender, args) {
    var mesg = args.mesg as SessionMesg;
    sessionCount++;
    print('\n=== Session #$sessionCount ===');
    print('Sport: ${mesg.getSport()}');
    print('Sub Sport: ${mesg.getSubSport()}');
    if (mesg.getTotalElapsedTime() != null) {
      print('Total Time: ${mesg.getTotalElapsedTime()} seconds');
    }
    if (mesg.getTotalDistance() != null) {
      print('Total Distance: ${mesg.getTotalDistance()} m');
    }
    if (mesg.getAvgHeartRate() != null) {
      print('Avg Heart Rate: ${mesg.getAvgHeartRate()} bpm');
    }
    if (mesg.getTotalCalories() != null) {
      print('Calories: ${mesg.getTotalCalories()} kcal');
    }
  });

  // Connect decoder to broadcaster
  decoder.onMesg = (mesg) => broadcaster.onMesg(decoder, MesgEventArgs(mesg));
  decoder.onMesgDefinition = (mesgDef) =>
      broadcaster.onMesgDefinition(decoder, MesgDefinitionEventArgs(mesgDef));

  // Create a sample FIT file
  print('Creating sample FIT file...\n');
  final encoder = Encode();
  encoder.open();

  // File ID
  final fileIdMesg = FileIdMesg();
  fileIdMesg.setFieldValue(FileIdMesg.fieldType, File.activity);
  fileIdMesg.setFieldValue(FileIdMesg.fieldManufacturer, Manufacturer.garmin);
  fileIdMesg.setFieldValue(FileIdMesg.fieldProduct, 1);
  fileIdMesg.setFieldValue(FileIdMesg.fieldSerialNumber, 12345);
  // TimeCreated expects int timestamp if using setFieldValue on raw field usually,
  // but let's check if we can pass a DateTime.
  // ProfileType.dateTime implies it expects an int (seconds since offset) usually,
  // but Encode/Field might handle transformation.
  // Looking at Field.setValue, it handles num.
  // Ideally we should convert to FIT timestamp.
  int currentTimestamp =
      DateTime.now().millisecondsSinceEpoch ~/ 1000 - 631065600;
  fileIdMesg.setFieldValue(FileIdMesg.fieldTimeCreated, currentTimestamp);

  encoder.writeMesgDefinition(MesgDefinition.fromMesg(fileIdMesg));
  encoder.writeMesg(fileIdMesg);

  // Session
  final sessionMesg = SessionMesg();
  sessionMesg.setFieldValue(SessionMesg.fieldTimestamp, currentTimestamp);
  sessionMesg.setFieldValue(
      SessionMesg.fieldStartTime, currentTimestamp - 1800);
  sessionMesg.setFieldValue(SessionMesg.fieldSport, Sport.running);
  sessionMesg.setFieldValue(SessionMesg.fieldSubSport, SubSport.generic);
  sessionMesg.setFieldValue(
      SessionMesg.fieldTotalElapsedTime, 1800.0); // 30 minutes in seconds?
  // Wait, TotalElapsedTime is uint32 (scale 1000) usually -> ms.
  // Let's check profile. SessionMesg.totalElapsedTime is uint32, scale 1000, units s?
  // Actually usually scale 1000 means value in file is ms, so inputs as float seconds.
  // Let's assume standard behavior (seconds input -> stored as ms).
  sessionMesg.setFieldValue(SessionMesg.fieldTotalElapsedTime, 1800.0);
  sessionMesg.setFieldValue(SessionMesg.fieldTotalDistance, 5000.0); // 5 km
  sessionMesg.setFieldValue(SessionMesg.fieldAvgHeartRate, 150);
  sessionMesg.setFieldValue(SessionMesg.fieldTotalCalories, 300);

  encoder.writeMesgDefinition(MesgDefinition.fromMesg(sessionMesg));
  encoder.writeMesg(sessionMesg);

  // Lap
  final lapMesg = LapMesg();
  lapMesg.setFieldValue(LapMesg.fieldTimestamp, currentTimestamp);
  lapMesg.setFieldValue(LapMesg.fieldStartTime, currentTimestamp - 1800);
  lapMesg.setFieldValue(LapMesg.fieldTotalElapsedTime, 1800.0);
  lapMesg.setFieldValue(LapMesg.fieldTotalDistance, 5000.0);
  lapMesg.setFieldValue(LapMesg.fieldAvgHeartRate, 150);
  lapMesg.setFieldValue(LapMesg.fieldMaxHeartRate, 175);

  encoder.writeMesgDefinition(MesgDefinition.fromMesg(lapMesg));
  encoder.writeMesg(lapMesg);

  // Records
  final baseTime = currentTimestamp - 1800;
  // Create definition once
  final tempRecord = RecordMesg();
  // Add some dummy values to ensure fields are in definition
  tempRecord.setFieldValue(RecordMesg.fieldTimestamp, baseTime);
  tempRecord.setFieldValue(RecordMesg.fieldPositionLat, 0);
  tempRecord.setFieldValue(RecordMesg.fieldPositionLong, 0);
  tempRecord.setFieldValue(RecordMesg.fieldDistance, 0);
  tempRecord.setFieldValue(RecordMesg.fieldHeartRate, 0);
  tempRecord.setFieldValue(RecordMesg.fieldCadence, 0);
  tempRecord.setFieldValue(RecordMesg.fieldSpeed, 0);

  final recordDef = MesgDefinition.fromMesg(tempRecord);
  encoder.writeMesgDefinition(recordDef);

  for (int i = 0; i < 20; i++) {
    final recordMesg = RecordMesg();
    recordMesg.setFieldValue(RecordMesg.fieldTimestamp, baseTime + (i * 90));

    // Position
    int lat = ((51.5074 + (i * 0.0001)) * 11930464.7111).round();
    int long = ((-0.1278 + (i * 0.0001)) * 11930464.7111).round();
    recordMesg.setFieldValue(RecordMesg.fieldPositionLat, lat);
    recordMesg.setFieldValue(RecordMesg.fieldPositionLong, long);

    recordMesg.setFieldValue(RecordMesg.fieldDistance, (i * 250).toDouble());
    recordMesg.setFieldValue(RecordMesg.fieldHeartRate, 140 + i);
    recordMesg.setFieldValue(RecordMesg.fieldCadence, 80 + (i % 10));
    recordMesg.setFieldValue(RecordMesg.fieldSpeed, 2.78); // ~10 km/h

    encoder.writeMesg(recordMesg);
  }

  final fitBytes = encoder.close();

  print('Decoding FIT file...\n');
  print('=' * 60);

  // Decode the file
  try {
    decoder.read(fitBytes);
  } catch (e) {
    print('\nError: $e');
    exit(1);
  }

  print('\n' + '=' * 60);
  print('\nSummary:');
  print('  File ID messages: $fileIdCount');
  print('  Session messages: $sessionCount');
  print('  Lap messages: $lapCount');
  print('  Record messages: $recordCount');
  print('\nDecoding completed successfully!');
}

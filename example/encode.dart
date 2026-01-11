import 'dart:io' as io show File;
import 'package:fit_sdk/fit_sdk.dart';

// Example demonstrating how to encode a FIT file
void main(List<String> args) async {
  print('FIT File Encoder Example\n');
  print('Creating a sample activity FIT file...\n');

  final outputFile = args.isNotEmpty ? args[0] : 'example_activity.fit';

  // Create encoder
  final encoder = Encode();

  // Start encoding
  encoder.open();

  // FIT epoch is 631065600 seconds after Unix epoch
  const int fitEpochOffset = 631065600;

  // 1. Create File ID Message (required)
  print('Adding File ID message...');
  final fileIdMesg = Mesg.fromMesgNum(MesgNum.fileId);
  fileIdMesg.setFieldValue(0, 4); // type = activity
  fileIdMesg.setFieldValue(1, 1); // manufacturer = garmin
  fileIdMesg.setFieldValue(2, 1); // product
  fileIdMesg.setFieldValue(3, 12345); // serial number
  fileIdMesg.setFieldValue(
      4,
      (DateTime.now().millisecondsSinceEpoch ~/ 1000) -
          fitEpochOffset); // time_created

  final fileIdDef = MesgDefinition.fromMesg(fileIdMesg);
  encoder.writeMesgDefinition(fileIdDef);
  encoder.writeMesg(fileIdMesg);

  // 2. Create Activity Message
  print('Adding Activity message...');
  final activityMesg = Mesg.fromMesgNum(MesgNum.activity);
  activityMesg.setFieldValue(
      253,
      (DateTime.now().millisecondsSinceEpoch ~/ 1000) -
          fitEpochOffset); // timestamp
  activityMesg.setFieldValue(0, 1000); // total_timer_time (10 seconds in ms)
  activityMesg.setFieldValue(1, 1); // num_sessions
  activityMesg.setFieldValue(2, 0); // type = manual
  activityMesg.setFieldValue(3, 0); // event = activity
  activityMesg.setFieldValue(4, 0); // event_type = start

  final activityDef = MesgDefinition.fromMesg(activityMesg);
  encoder.writeMesgDefinition(activityDef);
  encoder.writeMesg(activityMesg);

  // 3. Create Session Message
  print('Adding Session message...');
  final sessionMesg = Mesg.fromMesgNum(MesgNum.session);
  sessionMesg.setFieldValue(
      253,
      (DateTime.now().millisecondsSinceEpoch ~/ 1000) -
          fitEpochOffset); // timestamp
  sessionMesg.setFieldValue(
      2,
      (DateTime.now().millisecondsSinceEpoch ~/ 1000 - 1000) -
          fitEpochOffset); // start_time
  sessionMesg.setFieldValue(7, 1000); // total_elapsed_time (10 seconds in ms)
  sessionMesg.setFieldValue(8, 1000); // total_timer_time
  sessionMesg.setFieldValue(9, 1000); // total_distance (1000m = 1km)
  sessionMesg.setFieldValue(5, 1); // sport = running
  sessionMesg.setFieldValue(6, 1); // sub_sport = generic

  final sessionDef = MesgDefinition.fromMesg(sessionMesg);
  encoder.writeMesgDefinition(sessionDef);
  encoder.writeMesg(sessionMesg);

  // 4. Create Lap Message
  print('Adding Lap message...');
  final lapMesg = Mesg.fromMesgNum(MesgNum.lap);
  lapMesg.setFieldValue(
      253,
      (DateTime.now().millisecondsSinceEpoch ~/ 1000) -
          fitEpochOffset); // timestamp
  lapMesg.setFieldValue(
      2,
      (DateTime.now().millisecondsSinceEpoch ~/ 1000 - 1000) -
          fitEpochOffset); // start_time
  lapMesg.setFieldValue(7, 1000); // total_elapsed_time
  lapMesg.setFieldValue(8, 1000); // total_timer_time
  lapMesg.setFieldValue(9, 1000); // total_distance

  final lapDef = MesgDefinition.fromMesg(lapMesg);
  encoder.writeMesgDefinition(lapDef);
  encoder.writeMesg(lapMesg);

  // 5. Create Record Messages (GPS data points)
  print('Adding Record messages...');
  final recordDef = MesgDefinition.fromMesg(Mesg.fromMesgNum(MesgNum.record));

  for (int i = 0; i < 10; i++) {
    final recordMesg = Mesg.fromMesgNum(MesgNum.record);
    final timestamp =
        (DateTime.now().millisecondsSinceEpoch ~/ 1000 - 1000 + (i * 100)) -
            fitEpochOffset;

    recordMesg.setFieldValue(253, timestamp); // timestamp
    recordMesg.setFieldValue(
        0,
        ((51.5074 + (i * 0.0001)) * 11930464.7111)
            .round()); // position_lat (semicircles)
    recordMesg.setFieldValue(
        1,
        ((-0.1278 + (i * 0.0001)) * 11930464.7111)
            .round()); // position_long (semicircles)
    recordMesg.setFieldValue(5, i * 100); // distance
    recordMesg.setFieldValue(6, 140 + i); // heart_rate
    recordMesg.setFieldValue(7, 80 + i); // cadence
    recordMesg.setFieldValue(13, 5000); // speed (5 m/s)

    if (i == 0) {
      encoder.writeMesgDefinition(recordDef);
    }
    encoder.writeMesg(recordMesg);
  }

  // 6. Create Event Message (stop event)
  print('Adding Event message...');
  final eventMesg = Mesg.fromMesgNum(MesgNum.event);
  eventMesg.setFieldValue(
      253,
      (DateTime.now().millisecondsSinceEpoch ~/ 1000) -
          fitEpochOffset); // timestamp
  // ... rest of event message logic follows in existing code
  eventMesg.setFieldValue(0, 0); // event = timer
  eventMesg.setFieldValue(1, 1); // event_type = stop

  final eventDef = MesgDefinition.fromMesg(eventMesg);
  encoder.writeMesgDefinition(eventDef);
  encoder.writeMesg(eventMesg);

  // Finalize and get bytes
  final fitBytes = encoder.close();

  print('\nFIT file created successfully!');
  print('File size: ${fitBytes.length} bytes');

  // Save to file
  final file = io.File(outputFile);
  await file.writeAsBytes(fitBytes);

  print('Saved to: ${file.absolute.path}');
  print('\nYou can now upload this file to Garmin Connect or other platforms.');
}

import 'dart:io' hide File;
import 'dart:io' as io show File;
import 'package:fit_sdk/fit_sdk.dart';

// Example demonstrating how to decode a FIT file
void main(List<String> args) async {
  final decoder = Decode();

  // Set up message definition listener
  decoder.onMesgDefinition = (MesgDefinition mesgDef) {
    print('Message Definition: Global Mesg Num = ${mesgDef.globalMesgNum}');
  };

  // Set up message listener
  decoder.onMesg = (Mesg mesg) {
    print('\n--- Message: ${mesg.name} (Num: ${mesg.num}) ---');

    // Print all fields with values
    for (var field in mesg.fields) {
      if (field.value != null && !field.isInvalid) {
        String valueStr = field.value.toString();

        // Check if field is a timestamp (ProfileType.dateTime or ProfileType.localDateTime)
        if (field.profileType == ProfileType.dateTime ||
            field.profileType == ProfileType.localDateTime) {
          if (field.value is int) {
            final dt = mesg.timestampToDateTime(field.value as int);
            if (dt != null) {
              valueStr = '$valueStr (${dt.toIso8601String()})';
            }
          }
        }

        String unitsStr = field.units != null ? ' ${field.units}' : '';
        print('  ${field.name}: $valueStr$unitsStr');
      }
    }

    // Print developer fields if any
    if (mesg.developerFields.isNotEmpty) {
      print('  Developer Fields:');
      for (var devField in mesg.developerFields) {
        if (devField.value != null) {
          print('    ${devField.name}: ${devField.value}');
        }
      }
    }
  };

  // If a file path is provided, decode that file
  if (args.isNotEmpty) {
    final filePath = args[0];
    print('FIT File Decoder Example');
    print('Decoding file: $filePath');
    print('=' * 60);

    final file = io.File(filePath);
    if (await file.exists()) {
      try {
        final bytes = await file.readAsBytes();
        decoder.read(bytes);
        print('\n' + '=' * 60);
        print('\nFile decoded successfully!');
      } catch (e) {
        print('\nError decoding file: $e');
        exit(1);
      }
    } else {
      print('\nFile not found: $filePath');
      exit(1);
    }
  } else {
    // No args provided, run the internal demo
    print('FIT File Decoder Example');
    print('No file specified. Running internal demo...');
    print('Usage: dart example/decode.dart [path/to/file.fit]\n');
    print('=' * 60);

    // Create a sample FIT file in memory
    print('Creating a sample FIT file in memory...\n');

    final encoder = Encode();
    encoder.open();

    // Create File ID message
    final fileIdMesg = Mesg.fromMesgNum(MesgNum.fileId);
    fileIdMesg.setFieldValue(0, 4); // type = activity
    fileIdMesg.setFieldValue(1, 1); // manufacturer = garmin
    fileIdMesg.setFieldValue(2, 1); // product
    fileIdMesg.setFieldValue(4, DateTime.now().millisecondsSinceEpoch ~/ 1000);

    // Write file ID message
    final fileIdDef = MesgDefinition.fromMesg(fileIdMesg);
    encoder.writeMesgDefinition(fileIdDef);
    encoder.writeMesg(fileIdMesg);

    // Create a simple record message
    final recordMesg = Mesg.fromMesgNum(MesgNum.record);
    recordMesg.setFieldValue(
        253, DateTime.now().millisecondsSinceEpoch ~/ 1000); // timestamp
    // Convert degrees to semicircles (degrees * 2^31 / 180)
    int lat = (51.5074 * 11930464.7111).round();
    int long = (-0.1278 * 11930464.7111).round();
    recordMesg.setFieldValue(0, lat); // position_lat (London)
    recordMesg.setFieldValue(1, long); // position_long
    recordMesg.setFieldValue(5, 100); // distance (100m)
    recordMesg.setFieldValue(3, 150); // heart_rate (150 bpm)

    final recordDef = MesgDefinition.fromMesg(recordMesg);
    encoder.writeMesgDefinition(recordDef);
    encoder.writeMesg(recordMesg);

    // Close and get bytes
    final fitBytes = encoder.close();

    print('Sample FIT file created (${fitBytes.length} bytes)\n');
    print('Decoding the sample file...\n');
    print('=' * 60);

    // Decode the memory file
    try {
      decoder.read(fitBytes);
      print('\n' + '=' * 60);
      print('\nDemo completed successfully!');
    } catch (e) {
      print('\nError decoding sample file: $e');
      exit(1);
    }
  }
}

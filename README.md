# Dart FIT SDK

A pure Dart port of the [Garmin FIT SDK](https://developer.garmin.com/fit/overview/) for encoding and decoding FIT (Flexible and Interoperable Data Transfer) files.

[![Pub Version](https://img.shields.io/pub/v/fit_sdk)](https://pub.dev/packages/fit_sdk)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## Overview

The FIT (Flexible and Interoperable Data Transfer) protocol is a compact binary format designed for storing and sharing data from fitness, health, and sports devices. This library provides a complete Dart implementation for reading and writing FIT files, making it easy to integrate fitness data into your Dart or Flutter applications.

### Features

- ✅ **Full FIT Protocol Support**: Decode and encode FIT files with complete protocol compliance
- ✅ **Compressed Timestamp Headers**: Efficient handling of compressed timestamps for compact file sizes
- ✅ **Developer Data Fields**: Full support for custom developer-defined fields
- ✅ **CRC Verification**: Built-in data integrity checks with CRC validation
- ✅ **Accumulated Fields**: Proper handling of accumulated values (e.g., total distance)
- ✅ **Field Type Demotion**: Automatic handling of variable-sized field definitions
- ✅ **Zero Dependencies**: Pure Dart implementation with no external dependencies
- ✅ **Type-Safe**: Strongly-typed message and field definitions
- ✅ **Cross-Platform**: Works on all Dart platforms (Flutter, Web, Server, CLI)

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  fit_sdk: ^0.1.0
```

Then run:

```bash
dart pub get
```

Or for Flutter projects:

```bash
flutter pub get
```

## Quick Start

### Decoding a FIT File

```dart
import 'dart:io';
import 'package:fit_sdk/fit_sdk.dart';

void main() async {
  // Read FIT file
  final file = File('activity.fit');
  final bytes = await file.readAsBytes();

  // Create decoder
  final decoder = Decode();

  // Set up message listener
  decoder.onMesg = (Mesg mesg) {
    print('Message: ${mesg.name}');
    
    for (var field in mesg.fields) {
      if (field.value != null) {
        print('  ${field.name}: ${field.value} ${field.units}');
      }
    }
  };

  // Decode the file
  decoder.read(bytes);
}
```

### Encoding a FIT File

```dart
import 'dart:io';
import 'package:fit_sdk/fit_sdk.dart';

void main() async {
  final encoder = Encode();
  encoder.open();

  // FIT epoch offset (seconds since 1989-12-31 00:00:00 UTC)
  const fitEpochOffset = 631065600;

  // Create File ID message (required)
  final fileIdMesg = Mesg.fromMesgNum(MesgNum.fileId);
  fileIdMesg.setFieldValue(0, 4); // type = activity
  fileIdMesg.setFieldValue(1, 1); // manufacturer = garmin
  fileIdMesg.setFieldValue(4, 
    (DateTime.now().millisecondsSinceEpoch ~/ 1000) - fitEpochOffset);

  final fileIdDef = MesgDefinition.fromMesg(fileIdMesg);
  encoder.writeMesgDefinition(fileIdDef);
  encoder.writeMesg(fileIdMesg);

  // Create Record message
  final recordMesg = Mesg.fromMesgNum(MesgNum.record);
  recordMesg.setFieldValue(253, 
    (DateTime.now().millisecondsSinceEpoch ~/ 1000) - fitEpochOffset);
  recordMesg.setFieldValue(0, (51.5074 * 11930464.7111).round()); // latitude
  recordMesg.setFieldValue(1, (-0.1278 * 11930464.7111).round()); // longitude
  recordMesg.setFieldValue(5, 1000); // distance (meters)
  recordMesg.setFieldValue(3, 150); // heart rate (bpm)

  final recordDef = MesgDefinition.fromMesg(recordMesg);
  encoder.writeMesgDefinition(recordDef);
  encoder.writeMesg(recordMesg);

  // Finalize and save
  final fitBytes = encoder.close();
  await File('output.fit').writeAsBytes(fitBytes);
}
```

## Examples

The `demo/` directory contains complete working examples:

- **`decode.dart`**: Demonstrates how to decode FIT files and display message data
- **`encode.dart`**: Shows how to create FIT files with various message types
- **`broadcaster.dart`**: Example of using the message broadcaster pattern

Run examples:

```bash
# Decode a FIT file
dart run demo/decode.dart samples/Activity.fit

# Create a new FIT file
dart run demo/encode.dart output.fit
```

## API Documentation

### Core Classes

#### `Decode`
Decodes FIT files from binary data.

```dart
final decoder = Decode();
decoder.onMesg = (Mesg mesg) { /* handle message */ };
decoder.onMesgDefinition = (MesgDefinition def) { /* handle definition */ };
decoder.read(bytes);
```

#### `Encode`
Encodes FIT messages into binary format.

```dart
final encoder = Encode();
encoder.open();
encoder.writeMesgDefinition(definition);
encoder.writeMesg(message);
final bytes = encoder.close();
```

#### `Mesg`
Represents a FIT message with fields.

```dart
final mesg = Mesg.fromMesgNum(MesgNum.record);
mesg.setFieldValue(fieldNum, value);
final value = mesg.getFieldValue(fieldNum);
```

#### `MesgBroadcaster`
Event-based message handling with type-specific listeners.

```dart
final broadcaster = MesgBroadcaster();
broadcaster.addListener(MesgNum.record, (sender, args) {
  final recordMesg = RecordMesg(args.mesg);
  print('Heart Rate: ${recordMesg.heartRate}');
});
```

### Message Types

The SDK includes strongly-typed message classes for all standard FIT message types:

- `FileIdMesg` - File identification
- `RecordMesg` - GPS and sensor data points
- `SessionMesg` - Activity session summary
- `LapMesg` - Lap information
- `ActivityMesg` - Activity summary
- `EventMesg` - Event markers
- And many more...

## FIT File Structure

A typical FIT file contains:

1. **File Header** - Identifies the file as FIT format
2. **Message Definitions** - Describe the structure of data messages
3. **Data Messages** - Actual fitness/health data
4. **CRC** - Data integrity checksum

## Supported FIT Profile

This SDK supports the FIT Protocol as defined by Garmin. It includes:

- All standard message types (Activity, Session, Lap, Record, etc.)
- All standard field types and units
- Developer data fields for custom extensions
- Component field expansion
- Accumulated field handling

## Compatibility

- **Dart SDK**: >= 3.0.0 < 4.0.0
- **Flutter**: Compatible with all Flutter platforms (iOS, Android, Web, Desktop)
- **Platforms**: Works on all Dart-supported platforms

## Project Structure

```
fit_sdk/
├── lib/
│   ├── fit/              # Core FIT protocol implementation
│   │   ├── profile/      # Generated message and type definitions
│   │   ├── decode.dart   # FIT file decoder
│   │   ├── encode.dart   # FIT file encoder
│   │   └── ...
│   └── fit_sdk.dart      # Main library export
├── demo/                 # Example applications
├── samples/              # Sample FIT files for testing
└── docs/                 # Additional documentation
```

## Differences from C# SDK

This Dart port maintains functional parity with the official Garmin C# FIT SDK while adapting to Dart idioms:

- Uses Dart naming conventions (camelCase instead of PascalCase)
- Leverages Dart's null safety features
- Provides async/await support for file I/O
- Includes Flutter-friendly APIs

All core features from the C# SDK have been ported, including:
- ✅ Compressed timestamp headers
- ✅ Developer data lookup
- ✅ CRC verification
- ✅ Accumulated field handling
- ✅ Field type demotion

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

### Development Setup

```bash
# Clone the repository
git clone https://github.com/floatinghotpot/dart_fit_sdk.git
cd dart_fit_sdk

# Install dependencies
dart pub get

# Run tests
dart test

# Run examples
dart run demo/decode.dart samples/Activity.fit
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Based on the [Garmin FIT SDK](https://developer.garmin.com/fit/overview/)
- Ported from the official C# implementation
- FIT Protocol © Garmin Ltd.

## Resources

- [FIT SDK Documentation](https://developer.garmin.com/fit/overview/)
- [FIT File Format](https://developer.garmin.com/fit/file-types/)
- [Garmin Connect](https://connect.garmin.com/)

## Support

- 📖 [Documentation](https://pub.dev/documentation/fit_sdk/latest/)
- 🐛 [Issue Tracker](https://github.com/floatinghotpot/dart_fit_sdk/issues)
- 💬 [Discussions](https://github.com/floatinghotpot/dart_fit_sdk/discussions)

---

**Note**: This is an unofficial port of the Garmin FIT SDK. For the official SDK and protocol documentation, please visit [developer.garmin.com/fit](https://developer.garmin.com/fit/).

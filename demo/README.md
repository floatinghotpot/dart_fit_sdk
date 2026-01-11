# FIT SDK Demos

This directory contains demos demonstrating how to use the FIT SDK for Dart.

## Demos

### 1. decode.dart

Demonstrates how to decode a FIT file and read its messages.

**Usage:**

Run with no arguments to see a demo using a generated in-memory file:
```bash
dart run demo/decode.dart
```

Run with a file path to decode a specific FIT file:
```bash
dart run demo/decode.dart path/to/file.fit
```

### 2. encode.dart

Demonstrates how to create a new FIT activity file from scratch.

**Usage:**

Run with no arguments to create `example_activity.fit`:
```bash
dart run demo/encode.dart
```

Run with an output file path to specify the output filename:
```bash
dart run demo/encode.dart custom_output.fit
```

### 3. broadcaster.dart

Demonstrates how to use the MesgBroadcaster for type-safe message handling.

```bash
dart run demo/broadcaster.dart
```

## Running the Demos

Make sure you have the FIT SDK package installed:

```bash
dart pub get
```

Then run any demo:

```bash
dart run demo/<demo_name>.dart [<path/to/FIT/file>]
```

## What You'll Learn

- **decode.dart**: How to read FIT files, parse messages, and access field values. Supports decoding arbitrary files via command line arguments.
- **encode.dart**: How to create FIT files, add messages, and save them. Supports specifying output path.
- **broadcaster.dart**: How to use event-based message handling for cleaner code.

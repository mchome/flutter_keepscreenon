# flutter_keepscreenon

[![pub package](https://img.shields.io/pub/v/flutter_keepscreenon.svg)](https://pub.dartlang.org/packages/flutter_keepscreenon)

A package can help you to keep the device's screen on programmatically without any permission.

## Getting Started

### Installation

Add this to your pubspec.yaml (or create it):

```yaml
dependencies:
  flutter_keepscreenon: any
```

Then run the flutter tooling:

```bash
flutter packages get
```

### Example

```dart
try {
  await FlutterKeepscreenon.keepScreenOn(true);
} on PlatformException catch (e) {
  print(e);
}
```

Details in [example/](https://github.com/mchome/flutter_keepscreenon/tree/master/example) folder.

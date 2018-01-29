# flutter_keepscreenon

[![pub package](https://img.shields.io/pub/v/flutter_keepscreenon.svg)](https://pub.dartlang.org/packages/flutter_keepscreenon)

A package can help you to prevent your flutter app's screen
going to sleep programmatically.

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
  await FlutterKeepscreenon.activateKeepScreenOn; // activate
  // await FlutterKeepscreenon.deactivateKeepScreenOn; // deactivate
} on PlatformException catch (e) {
  print(e);
}
```

Details in [example/](https://github.com/mchome/flutter_keepscreenon/tree/master/example) folder.
## Note that
I dont have macos so i cant test the ios part.  
If you can use it in ios or patch it, please let me know.
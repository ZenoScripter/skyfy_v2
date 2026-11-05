# SKYFY — customized Musify source

Developer branding: Wildan Tirta Permana.
Android application ID: `com.wildan.skyfy`.

## Important package-name note

The Dart package name remains `musify` intentionally. The source imports many internal files through `package:musify/...`; changing the pubspec package name without rewriting every import causes `Target of URI doesn't exist` / library-not-found errors. Android's application ID and visible branding are SKYFY.

## Android build

Use a Flutter SDK compatible with the `environment` constraints in `pubspec.yaml`.

```bash
flutter clean
flutter pub get
flutter build apk --release --flavor github
```

The APK is normally written to `build/app/outputs/flutter-apk/app-github-release.apk`.

## Web preview

Open `web/index.html` in a browser, or serve the `web` directory with any static web host. This is a separate responsive SKYFY web UI preview with sample/demo track metadata and a simulated player; it is not a compiled Flutter web port and does not stream the app's catalog.

For an actual Flutter web build, install Flutter with web support, then run:

```bash
flutter config --enable-web
flutter create --platforms web .
flutter pub get
flutter build web
```

Some mobile/desktop-specific plugins may need conditional imports or web replacements before the full Flutter app can compile for web.

## Original project attribution

This is a modified fork/customization of Musify. Retain the upstream license and notices in `LICENSE` and source headers.

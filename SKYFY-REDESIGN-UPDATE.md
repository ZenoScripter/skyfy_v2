# SKYFY Redesign Update

This update is based on the existing `SKYFY-renamed-original.zip` Flutter project. It is not a new project and keeps the original Musify-derived feature implementation, dependency graph, package imports, Android application ID, routing, and GitHub Actions workflows.

## Changes
- Disabled Flutter's debug banner.
- Removed the external Sponsor the Project card from Settings and suppressed sponsor announcements on Home. SponsorBlock playback controls remain unchanged.
- Renamed the About destination to **Portofolio Saya** and updated its developer/contact content to Wildan Tirta Permana / @nexsyncc.
- Fixed the Light/Dark/System theme setup by supplying distinct light and dark `ThemeData` instances to `MaterialApp.router`; the prior code supplied the same selected-brightness theme to both slots.
- Added the user-provided monochrome halftone background to Home with brightness-aware overlays.
- Replaced Android launcher icon variants and the app icon assets with the SKYFY `//` mark.
- Updated Home branding and loading spinner branding to `//` / SKYFY.
- Added a locally stored editable Listener profile name in Settings.
- Added smooth fade-up page transitions for Android/desktop and native Cupertino transitions on Apple platforms.
- Updated audio service display name to SKYFY.

## Validation
- `pubspec.yaml` parses successfully.
- All Android XML resource files parse successfully.
- Flutter SDK was not available in the editing environment, so `flutter analyze` and an Android build were not run here. Run the existing GitHub Actions **Build debug apk** workflow before installing the result.

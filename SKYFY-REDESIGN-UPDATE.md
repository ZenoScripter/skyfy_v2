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


## Global wallpaper and build fixes (2026-11-06)
- Mounted `assets/backgrounds/skyfy_halftone.jpg` once behind the app router so the same wallpaper is visible across Home, Search, Library, Player, Settings, About, and nested routes.
- Made scaffold, app bar, and navigation surfaces transparent so the global wallpaper can show through while cards and controls retain themed surfaces.
- Added the missing Flutter Cupertino import required by `CupertinoPageTransitionsBuilder` in the page transition theme.
- Kept the existing animated route transitions and disabled Flutter's debug checked-mode banner.
- Regenerated Android launcher/adaptive foreground icon density assets from the existing SKYFY `//` mark.
- Aligned Android 12+ splash background colors with SKYFY's dark identity.
- Removed the root GitHub funding metadata so the repository does not advertise a Sponsor button.
- Preserved the existing Flutter/Musify codebase, package imports, music services, and GPL-3.0 license.

Build verification note: this environment does not include the Flutter SDK, so a local `flutter analyze` / APK build could not be executed here. Run the included GitHub Actions `Build debug apk` workflow to perform the actual analyzer and Android build checks.

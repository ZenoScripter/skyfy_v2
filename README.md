# SKYFY Music

**Your sound. Your space.**

SKYFY is a personalized music player forked and customized from the open-source [Musify](https://github.com/gokadzev/Musify) project.

## Branding

- App name: **SKYFY**
- Android application ID: `com.wildan.skyfy`
- Developer / SKYFY project maintainer: **Wildan Tirta Permana**
- Version: `1.0.0`
- License: **GNU GPL v3.0 or later**

## Included experience

- Online music search and recommendations
- Offline music library and local playback
- Custom playlists and playlist organization
- Listening history and monthly listening recap
- Lyrics support and built-in equalizer
- Radio stations
- Spotify playlist import
- SKYFY home quick actions for Radio and Equalizer\n- Custom SKYFY visual identity, launcher icon, and About page

## Build Android APK

Requirements: Flutter SDK compatible with the version in `pubspec.yaml`, Android SDK, and Java 17.

```bash
flutter pub get
flutter build apk --release --flavor github
```

The resulting APK is normally located at:

`build/app/outputs/flutter-apk/app-github-release.apk`

You can rename the generated file to `Skyfy.apk` after building.

## Credits and license

SKYFY is a modified fork of **Musify**, originally created by **Valeri Gokadze** with contributions from its community. This project retains the original GPL-3.0-or-later license and upstream copyright notices. Changes in this fork include SKYFY branding, Android application identity, launcher artwork, About-page attribution, and selected interface styling.

Source code for redistributed builds must remain available under the same GPL license, with applicable copyright and license notices preserved. See [LICENSE](LICENSE) for the full license text.

Original project: https://github.com/gokadzev/Musify

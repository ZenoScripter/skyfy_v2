# SKYFY visual direction

This pass establishes the first cohesive SKYFY visual foundation:

- Midnight charcoal surfaces (`#101116`, `#1B1C25`, `#242532`).
- Electric lavender accent (`#A78BFA`).
- A restrained, flat typographic `S` monogram; no glow, chrome, or AI-style gradients.
- Cleaner app-bar wordmark and quieter home feature card.
- Existing playback, library, search, playlist, and settings logic is retained.

The upstream Musify GPL-3.0 license and attribution remain in place. The Dart package name
`musify` is intentionally unchanged so existing imports continue to resolve.

Build workflow uses `flutter analyze . --no-fatal-infos` so informational deprecation notices
are not treated as fatal before the APK build. Actual compilation still needs to be verified
by GitHub Actions.

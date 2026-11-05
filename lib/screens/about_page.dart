/*
 * Copyright (C) 2026 Valeri Gokadze and contributors.
 * Musify is free software under the GNU General Public License v3 or later.
 * This independent SKYFY modification retains upstream license obligations.
 */

import 'package:material_ui/material_ui.dart';
import 'package:musify/constants/app_constants.dart';
import 'package:musify/constants/version.dart';
import 'package:musify/utilities/url_launcher.dart';
import 'package:musify/widgets/mini_player_bottom_space.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Portofolio Saya')),
      body: SingleChildScrollView(
        padding: commonSingleChildScrollViewPadding,
        child: Column(
          children: [
            const SizedBox(height: 18),
            Center(
              child: Column(
                children: [
                  Text('//', style: TextStyle(color: scheme.primary, fontSize: 64, height: 1, fontWeight: FontWeight.w900, letterSpacing: -12)),
                  const SizedBox(height: 8),
                  Text('SKYFY', style: TextStyle(color: scheme.primary, fontSize: 34, fontWeight: FontWeight.w900, letterSpacing: 1)),
                  const SizedBox(height: 8),
                  const Text('Music for your moment.'),
                  const SizedBox(height: 14),
                  Container(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), decoration: BoxDecoration(color: scheme.secondaryContainer, borderRadius: BorderRadius.circular(30)), child: Text('v$appVersion · FREE', style: TextStyle(color: scheme.onSecondaryContainer, fontWeight: FontWeight.w700))),
                ],
              ),
            ),
            const SizedBox(height: 28),
            Card(
              color: scheme.surfaceContainerLow,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('DEVELOPER', style: TextStyle(color: scheme.primary, fontSize: 11, letterSpacing: 2, fontWeight: FontWeight.w800)),
                    const SizedBox(height: 10),
                    const Text('Wildan Tirta Permana', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                    Text('App Developer · UI Designer', style: TextStyle(color: scheme.onSurfaceVariant)),
                    const Divider(height: 26),
                    ListTile(contentPadding: EdgeInsets.zero, leading: const Icon(Icons.music_note), title: const Text('@nexsyncc'), subtitle: const Text('TikTok'), onTap: () => launchURL(Uri.parse('https://www.tiktok.com/@nexsyncc'))),
                    ListTile(contentPadding: EdgeInsets.zero, leading: const Icon(Icons.camera_alt_outlined), title: const Text('@nexsyncc'), subtitle: const Text('Instagram'), onTap: () => launchURL(Uri.parse('https://www.instagram.com/nexsyncc/'))),
                    ListTile(contentPadding: EdgeInsets.zero, leading: const Icon(Icons.mail_outline), title: const Text('wilgtwilgt@gmail.com'), subtitle: const Text('Email'), onTap: () => launchURL(Uri.parse('mailto:wilgtwilgt@gmail.com'))),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text('SKYFY is an independent modification of Musify. Original project credits and GPL-3.0 license are retained.', textAlign: TextAlign.center, style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 12)),
            const MiniPlayerBottomSpace(),
          ],
        ),
      ),
    );
  }
}

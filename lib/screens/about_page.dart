/*
 * Copyright (C) 2026 Valeri Gokadze
 * SKYFY is a modified fork of Musify and remains licensed under GPL-3.0-or-later.
 * Original project: https://github.com/gokadzev/Musify
 */

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:musify/constants/app_constants.dart';
import 'package:musify/constants/version.dart';
import 'package:musify/extensions/l10n.dart';
import 'package:musify/utilities/url_launcher.dart';
import 'package:musify/widgets/mini_player_bottom_space.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  Widget _contactTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
    required String url,
  }) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: colors.primary),
      title: Text(title),
      subtitle: Text(value),
      trailing: const Icon(FluentIcons.open_24_regular, size: 18),
      onTap: () => launchURL(Uri.parse(url)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n!.about)),
      body: SingleChildScrollView(
        padding: commonSingleChildScrollViewPadding,
        child: Column(
          children: [
            const SizedBox(height: 18),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [colors.primaryContainer, colors.surfaceContainerHigh],
                ),
              ),
              child: Column(
                children: [
                  Image.asset('assets/icons/musify_icon.png', width: 76, height: 76),
                  const SizedBox(height: 14),
                  Text('SKYFY', style: TextStyle(
                    color: colors.onSurface,
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2.4,
                  )),
                  const SizedBox(height: 5),
                  Text('Music for your moment', style: TextStyle(
                    color: colors.onSurfaceVariant, fontSize: 13,
                  )),
                  const SizedBox(height: 14),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                    decoration: BoxDecoration(
                      color: colors.surface.withValues(alpha: 0.75),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Text('Version $appVersion  •  Free forever',
                      style: TextStyle(color: colors.onSurface, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: colors.surfaceContainerLow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Developer', style: TextStyle(
                    color: colors.onSurface, fontWeight: FontWeight.bold, fontSize: 17,
                  )),
                  const SizedBox(height: 5),
                  Text('Wildan Tirta Permana', style: TextStyle(
                    color: colors.onSurfaceVariant, fontSize: 14,
                  )),
                  const SizedBox(height: 10),
                  _contactTile(context, icon: FluentIcons.video_24_regular,
                    title: 'TikTok', value: '@nexsyncc',
                    url: 'https://www.tiktok.com/@nexsyncc'),
                  _contactTile(context, icon: FluentIcons.camera_24_regular,
                    title: 'Instagram', value: '@nexsyncc',
                    url: 'https://www.instagram.com/nexsyncc/'),
                  _contactTile(context, icon: FluentIcons.mail_24_regular,
                    title: 'Email', value: 'wilgtwilgt@gmail.com',
                    url: 'mailto:wilgtwilgt@gmail.com'),
                ],
              ),
            ),
            const SizedBox(height: 14),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: colors.surfaceContainerLow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About SKYFY', style: TextStyle(
                    color: colors.onSurface, fontWeight: FontWeight.bold, fontSize: 16,
                  )),
                  const SizedBox(height: 7),
                  Text(
                    'A free music player for discovering, organizing, and enjoying the tracks you love. No account or subscription required.',
                    style: TextStyle(color: colors.onSurfaceVariant, height: 1.45),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'SKYFY is based on the open-source Musify project by Valeri Gokadze and contributors. Original credits and the GPL-3.0-or-later license are retained.',
                    style: TextStyle(color: colors.onSurfaceVariant, fontSize: 11, height: 1.4),
                  ),
                  TextButton.icon(
                    onPressed: () => launchURL(Uri.parse('https://github.com/gokadzev/Musify')),
                    icon: const Icon(FluentIcons.open_24_regular, size: 17),
                    label: const Text('Original project & license'),
                  ),
                ],
              ),
            ),
            const MiniPlayerBottomSpace(),
          ],
        ),
      ),
    );
  }
}

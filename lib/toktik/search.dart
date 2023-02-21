import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok_digitalturbine/font.dart';
import 'package:tiktok_digitalturbine/providers/instant_install.dart';

class TopTikSearch extends ConsumerWidget {
  const TopTikSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isImmediate = ref.watch(instantInstallProvider);
    final immediateString =
        isImmediate ? "✔ Immediate install" : "Immediate install";
    final doubleTapString =
        isImmediate ? "Double tap install" : "✔ Double tap install";

    return Align(
      alignment: Alignment.topRight,
      child: PopupMenuButton(
        onSelected: (bool value) {
          ref.read(instantInstallProvider.notifier).state = value;
        },
        padding: EdgeInsets.zero,
        itemBuilder: (context) => [
          PopupMenuItem(value: true, child: Text(immediateString)),
          PopupMenuItem(value: false, child: Text(doubleTapString)),
        ],
        child: const Icon(TikTokIcons.search),
      ),
    );
  }
}

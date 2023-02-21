import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok_digitalturbine/models/ad_model.dart';
import 'package:tiktok_digitalturbine/toktik/ad_bottom_sheet.dart';

final installSheetOpen = StateProvider<bool>((ref) => false);

class TokTikAdBox extends ConsumerWidget {
  final Ad _ad;

  const TokTikAdBox(this._ad, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset("assets/images/${_ad.brandLogo}"),
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _ad.brandName,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _ad.brandTagline,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 36,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                backgroundColor: _ad.brandColor,
              ),
              onPressed: () {
                ref.read(installSheetOpen.notifier).state = true;
                showModalBottomSheet(
                  context: context,
                  constraints: null,
                  builder: (context) => BottomAdSheet(_ad),
                ).then((value) =>
                    ref.read(installSheetOpen.notifier).state = false);
              },
              child: const Text(
                "Instant Install >",
                style: TextStyle(
                  color: Colors.white,
                  // shadows: [Shadow(color: Colors.black87, blurRadius: 1.75)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

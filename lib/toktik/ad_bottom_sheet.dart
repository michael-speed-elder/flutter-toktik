import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok_digitalturbine/launched_app_screen.dart';
import 'package:tiktok_digitalturbine/models/ad_model.dart';
import 'package:tiktok_digitalturbine/providers/instant_install.dart';
import 'package:tiktok_digitalturbine/utils.dart';

// Widget sheetBuilder(String sheetImage, Color btnColor) {
//   return _BottomAdSheet(sheetImage, btnColor);
// }

class BottomAdSheet extends ConsumerWidget {
  final Ad _adObject;

  const BottomAdSheet(this._adObject, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInstantInstall = ref.watch(instantInstallProvider);

    return Wrap(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                    "assets/images/bottom_sheets/${_adObject.sheetImage}"),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: _BottomSheetInstallButton(isInstantInstall, _adObject),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: _adObject.xBtnOnImage
                      ? GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: SizedBox.fromSize(
                            size: const Size.square(48),
                            child: const DecoratedBox(
                              decoration:
                                  BoxDecoration(color: Colors.transparent),
                            ),
                          ),
                        )
                      : IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close, shadows: [
                            Shadow(color: Colors.black87, blurRadius: 2)
                          ]),
                        ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

_noop() {}

enum _InstantInstall { before, downloading, installing, open }

class _BottomSheetInstallButton extends StatefulWidget {
  final Ad _adObject;
  final bool _fuseStarted;

  const _BottomSheetInstallButton(this._fuseStarted, this._adObject);

  @override
  State<_BottomSheetInstallButton> createState() =>
      _BottomSheetInstallButtonState();
}

class _BottomSheetInstallButtonState extends State<_BottomSheetInstallButton> {
  _InstantInstall _installState = _InstantInstall.before;

  @override
  void initState() {
    super.initState();
    if (widget._fuseStarted) startInstallFuse();
  }

  Duration _getRandomFuse() {
    return Duration(seconds: randomNum(limit: 5) + 5);
  }

  startInstallFuse() async {
    setState(() => _installState = _InstantInstall.downloading);
    await Future.delayed(_getRandomFuse(), () {
      setState(() => _installState = _InstantInstall.installing);
    });
    await Future.delayed(_getRandomFuse(), () {
      setState(() => _installState = _InstantInstall.open);
    });
  }

  _getButtonChild(BuildContext context) {
    switch (_installState) {
      case _InstantInstall.before:
        return TextButton(
          onPressed: startInstallFuse,
          child: const Text(
            "INSTANT INSTALL",
            style: TextStyle(
              color: Colors.white,
              // shadows: [Shadow(color: Colors.black87, blurRadius: 2)],
            ),
          ),
        );
      case _InstantInstall.downloading:
        return DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.grey.shade300,
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CircularProgressIndicator(strokeWidth: 2.5),
                ),
              ),
              const Expanded(child: Text("Downloading...")),
              TextButton(
                onPressed: _noop,
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent)),
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.red.shade800),
                ),
              ),
            ],
          ),
        );
      case _InstantInstall.installing:
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.grey.shade300,
          ),
          child: const Center(child: Text("Installing...")),
        );
      case _InstantInstall.open:
        precacheImage(
          AssetImage("assets/images/app_screens/${widget._adObject.appScreen}"),
          context,
        );
        return TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    LaunchedAppScreen(widget._adObject.appScreen),
              ),
            );
          },
          child: const Text("OPEN", style: TextStyle(color: Colors.white)),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Theme(
        data: ThemeData(
          progressIndicatorTheme:
              ProgressIndicatorThemeData(color: widget._adObject.brandColor),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(widget._adObject.brandColor),
              textStyle: MaterialStatePropertyAll(
                TextStyle(color: widget._adObject.brandColor),
              ),
            ),
          ),
        ),
        child: SizedBox(
          height: 40,
          child: _getButtonChild(context),
        ),
      ),
    );
  }
}

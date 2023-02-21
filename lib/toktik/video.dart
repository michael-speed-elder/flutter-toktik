import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok_digitalturbine/toktik/ad_box.dart';
// import 'package:video_player/video_player.dart';

typedef _ProgressCallback = void Function(double);

/// Stateful widget to fetch and then display video content.
class TokTikVideo extends ConsumerStatefulWidget {
  final String asset;
  final _ProgressCallback setProgress;

  // const TokTikVideo(this.asset, {super.key});
  const TokTikVideo(this.asset, this.setProgress, {super.key});

  @override
  _TokTikVideoState createState() => _TokTikVideoState();
}

class _TokTikVideoState extends ConsumerState<TokTikVideo> {
  // with AutomaticKeepAliveClientMixin<TokTikVideo> {
  late CachedVideoPlayerController _controller;

  videoProgressCallback() {
    final value = _controller.value;

    widget.setProgress(
        value.position.inMilliseconds / value.duration.inMilliseconds);
  }

  @override
  void initState() {
    super.initState();

    ref.listenManual<bool>(installSheetOpen,
        (previous, next) => _controller.setVolume(next ? 0 : 1));

    _controller =
        CachedVideoPlayerController.asset("assets/videos/${widget.asset}.mp4")
          ..setLooping(true)
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {});
            _controller.play();
          })
          ..addListener(videoProgressCallback);
  }

  @override
  Widget build(BuildContext context) {
    // debugPrint(
    //     "\nVIDEO IS PLAYING: ${widget.asset} - ${_controller.value.isPlaying}\n");
    // if (!_controller.value.isPlaying) _controller.play();
    // _controller.pause();
    // _controller.play();

    return Center(
      child: _controller.value.isInitialized
          ? CachedVideoPlayer(_controller)
          // AspectRatio(
          //     aspectRatio: _controller.value.aspectRatio,
          //     child: CachedVideoPlayer(_controller),
          //   )
          : Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    debugPrint("\nVIDEO HAS BEEN DISPOSED\n");
  }

  // @override
  // bool get wantKeepAlive => true;
}

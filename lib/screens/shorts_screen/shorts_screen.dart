import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:cached_video_player/cached_video_player.dart';
import 'package:cop_belgium_app/main.dart';
import 'package:flutter/material.dart';

import '../../utilities/constant.dart';

class ShortsScreen extends StatefulWidget {
  const ShortsScreen({super.key});

  @override
  State<ShortsScreen> createState() => _ShortsScreenState();
}

class _ShortsScreenState extends State<ShortsScreen> {
  late CachedVideoPlayerController _controller;

  List<String> videos = [
    '',
  ];

  @override
  void initState() {
    _controller = CachedVideoPlayerController.network(
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4");
    _controller.initialize().then((value) {
      _controller.play();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: _controller.value.isInitialized
                ? SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: AspectRatio(
                      aspectRatio: _controller.value.size.aspectRatio,
                      child: CachedVideoPlayer(_controller),
                    ),
                  )
                : const CircularProgressIndicator(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              color: kBlack.withAlpha(24),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: NetworkImage(kImageUrl),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Davies Nyantakyi',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '1 Peter 4:16',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    ProgressBar(
                      buffered: const Duration(seconds: 10),
                      thumbColor: kBlue,
                      progressBarColor: kBlue,
                      baseBarColor: kGreyLight,
                      bufferedBarColor: kBlue.withOpacity(0.2),
                      timeLabelTextStyle:
                          Theme.of(context).textTheme.bodyMedium,
                      progress: const Duration(seconds: 10),
                      total: const Duration(seconds: 10),
                      onSeek: (Duration value) {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

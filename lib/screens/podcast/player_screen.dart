import 'package:audio_service/audio_service.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:cop_belgium_app/main.dart';
import 'package:flutter/material.dart';

import '../../utilities/constant.dart';
import '../../widgets/custom_marquee.dart';
import '../../widgets/podcast_image.dart';

class PlayerScreen extends StatefulWidget {
  final MediaItem mediaItem;
  const PlayerScreen({Key? key, required this.mediaItem}) : super(key: key);

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildImageTitle(),
        const SizedBox(height: kContentSpacing8),
        _buildSlider(context),
        const SizedBox(height: kContentSpacing12),
        _buildMediaControls()
      ],
    );
  }

  Widget _buildSlider(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ProgressBar(
          buffered: const Duration(seconds: 10),
          thumbColor: kBlue,
          progressBarColor: kBlue,
          baseBarColor: kGreyLight,
          bufferedBarColor: kBlue.withOpacity(0.2),
          timeLabelTextStyle: Theme.of(context).textTheme.bodyMedium,
          progress: const Duration(seconds: 10),
          total: const Duration(seconds: 10),
          onSeek: (Duration value) {},
        ),
      ],
    );
  }

  Widget _buildMediaControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          tooltip: 'Fast rewind',
          iconSize: 42,
          onPressed: () {},
          icon: const Icon(
            Icons.replay_30_outlined,
            color: kBlack,
          ),
        ),
        const SizedBox(width: 18),
        IconButton(
          tooltip: 'Play & Pause',
          iconSize: 68,
          onPressed: () async {},
          //
          icon: const Icon(BootstrapIcons.play_circle_fill),
        ),
        const SizedBox(width: 18),
        IconButton(
          tooltip: 'Fast foward',
          iconSize: 42,
          onPressed: () {},
          icon: const Icon(
            Icons.forward_30_outlined,
          ),
        ),
      ],
    );
  }

  Widget _buildImageTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PodcastImage(
          height: MediaQuery.of(context).size.height * 0.4,
          width: double.infinity,
          imageURL: kImageUrl,
        ),
        const SizedBox(height: kContentSpacing24),
        SizedBox(
          height: 40,
          child: CustomMarquee(
            text: widget.mediaItem.title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Text(
          'Anim ea pariatur nisi non consectetur',
          style: Theme.of(context).textTheme.bodyMedium,
          maxLines: 1,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

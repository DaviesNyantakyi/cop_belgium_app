import 'package:audio_service/audio_service.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:cop_belgium_app/widgets/podcast_image.dart';
import 'package:flutter/material.dart';

import '../utilities/constant.dart';

class MiniPlayer extends StatefulWidget {
  final MediaItem mediaItem;
  const MiniPlayer({Key? key, required this.mediaItem}) : super(key: key);

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 68,
        decoration: const BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(kRadius),
            topRight: Radius.circular(kRadius),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(kContentSpacing8),
          child: Row(
            children: [
              _buildImageTitle(),
              _buildPlayButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageTitle() {
    return Expanded(
      flex: 4,
      child: Row(
        children: [
          const PodcastImage(
            width: 50,
            height: 70,
            imageURL: '',
          ),
          const SizedBox(width: kContentSpacing8),
          Expanded(
            flex: 2,
            child: _buildTitle(),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayButton() {
    return Expanded(
      child: IconButton(
        tooltip: 'Play & Pause',
        iconSize: 32,
        onPressed: () async {},
        icon: const Icon(
          BootstrapIcons.pause_circle_fill,
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 24,
          child: Text(
            'Nostrud excepteur dolore fugiat Lorem est exercitation mollit consequat',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          'exercitation mollit consequat',
          style: Theme.of(context).textTheme.bodyMedium,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }
}

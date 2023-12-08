import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

import '../utilities/constant.dart';

class EpisodeTile extends StatefulWidget {
  final VoidCallback? onPressed;
  final bool? showImage;

  const EpisodeTile({
    Key? key,
    this.onPressed,
    this.showImage,
  }) : super(key: key);

  @override
  State<EpisodeTile> createState() => _EpisodeTileState();
}

class _EpisodeTileState extends State<EpisodeTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kContentSpacing16),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitle(maxLines: 2),
              const SizedBox(height: kContentSpacing4),
              _buildDescription(maxLines: 2),
              const SizedBox(height: kContentSpacing4),
              _buildActions(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle({int? maxLines}) {
    return Text(
      'Minim voluptate occaecat irure pariatur.',
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
            color: kBlack,
          ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines ?? 2,
    );
  }

  Widget _buildDescription({int? maxLines}) {
    return Text(
      'Ullamco minim do sint consequat veniam laborum tempor labore Lorem ut dolore do. Non minim cillum id voluptate cillum mollit Lorem officia ipsum laborum nisi ut exercitation occaecat. Laborum velit do velit dolor ex tempor.',
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(color: kBlack.withOpacity(0.65), fontSize: 14),
      maxLines: maxLines ?? 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildActions() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildPlayPause(),
        const SizedBox(width: kContentSpacing8),
        _buildSlider(),
        const SizedBox(width: kContentSpacing8),
        _buildDuration(),
      ],
    );
  }

  Text _buildDuration() {
    return Text(
      '23:00',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: kBlue,
          ),
    );
  }

  Widget _buildPlayPause() {
    return GestureDetector(
      child: const Icon(
        BootstrapIcons.pause_circle_fill,
        size: 28,
        color: kBlue,
      ),
      onTap: () {},
    );
  }

  Widget _buildSlider() {
    return SizedBox(
      width: 100,
      child: SliderTheme(
        data: Theme.of(context).sliderTheme.copyWith(
              thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 0,
                disabledThumbRadius: 0,
              ),
              trackHeight: 4,
            ),
        child: Slider(
          value: 1,
          onChanged: (value) {},
        ),
      ),
    );
  }
}

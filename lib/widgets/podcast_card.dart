import 'package:cop_belgium_app/main.dart';
import 'package:cop_belgium_app/widgets/podcast_image.dart';
import 'package:flutter/material.dart';

class PodcastCard extends StatelessWidget {
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  const PodcastCard({
    Key? key,
    this.onTap,
    this.height = 120,
    this.width = 120,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PodcastImage(
              height: height,
              width: width,
              imageURL: kImageUrl,
            ),
            const SizedBox(height: 8),
            Text(
              'Qui veniam in aliquip laboris reprehenderit ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}

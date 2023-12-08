import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:cop_belgium_app/main.dart';
import 'package:cop_belgium_app/screens/podcast/player_screen.dart';
import 'package:cop_belgium_app/widgets/bottomsheet.dart';
import 'package:cop_belgium_app/widgets/episode_tile.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:just_audio_background/just_audio_background.dart';

import '../../utilities/constant.dart';
import '../../widgets/custom_buttons.dart';

class PodcastDetailScreen extends StatefulWidget {
  const PodcastDetailScreen({Key? key}) : super(key: key);

  @override
  State<PodcastDetailScreen> createState() => _PodcastDetailScreenState();
}

class _PodcastDetailScreenState extends State<PodcastDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: kContentSpacing8),
              _buildEpisodesTitle(),
              _buildDescription(),
              const SizedBox(height: kContentSpacing24),
              const Divider(),
              _buildEpisodes(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEpisodesTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kContentSpacing16),
      child: Text(
        'Episodes',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kContentSpacing16).copyWith(
        top: kContentSpacing16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(kImageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: kContentSpacing8),
              _buildSubscribeButton(),
            ],
          ),
          const SizedBox(width: kContentSpacing8),
          Expanded(
            flex: 8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '200 Episodes',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w500, color: kGrey),
                ),
                const SizedBox(height: kContentSpacing4),
                Text(
                  'Incididunt aute eu ipsum velit dolore ut labore.Incididunt aute eu ipsum velit dolore ut labore.Incididunt aute eu ipsum velit dolore ut labore.',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: kContentSpacing4),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubscribeButton() {
    return CustomElevatedButton(
      backgroundColor: kBlue.withOpacity(0.9),
      side: const BorderSide(
        color: kGrey,
      ),
      height: 38,
      width: 120,
      child: Text(
        'Subscribe',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: kWhite,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
      ),
      onPressed: () async {},
    );
  }

  Widget _buildDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kContentSpacing16),
      child: ExpandableText(
        'Consequat est sint mollit reprehenderit voluptate dolore. Consectetur enim magna enim nostrud ea sunt sunt dolor do deserunt anim id duis. Aliqua id proident mollit eu.',
        expandText: 'show more',
        collapseText: 'show less',
        maxLines: 3,
        linkColor: kBlue,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  Widget _buildEpisodes() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 100,
      separatorBuilder: (conext, index) {
        return const Divider();
      },
      itemBuilder: (conext, index) {
        return EpisodeTile(
          onPressed: () {
            showCustomBottomSheet(
              backgroundColor: kWhite,
              height: MediaQuery.of(context).size.height * 0.90,
              context: context,
              header: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(
                    onPressed: () {},
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(BootstrapIcons.info_circle),
                  )
                ],
              ),
              child: PlayerScreen(
                mediaItem: MediaItem(
                  id: '',
                  title: 'Gooogle',
                  artist: 'Davies',
                  duration: const Duration(seconds: 0),
                  displayDescription: '',
                  artUri: Uri.parse(kImageUrl),
                  extras: {
                    'audio': 'downloadBox[index].audio',
                    'downloadPath': 'downloadBox[index].downloadPath',
                    'pubDate': 'downloadBox[index].pubDate',
                    'pageLink': 'downloadBox[index].pageLink'
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

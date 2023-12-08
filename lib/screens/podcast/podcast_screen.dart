import 'package:audio_service/audio_service.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilities/constant.dart';
import '../../widgets/mini_player.dart';
import '../../widgets/podcast_card.dart';
import 'podcast_detail_screen.dart';

class PodcastScreen extends StatefulWidget {
  const PodcastScreen({Key? key}) : super(key: key);

  @override
  State<PodcastScreen> createState() => _PodcastScreenState();
}

class _PodcastScreenState extends State<PodcastScreen> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: kBlue,
      backgroundColor: kWhite,
      onRefresh: () async {},
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Podcasts',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: SafeArea(
          child: _buildPodcasts(context),
        ),
        bottomNavigationBar: MiniPlayer(
          mediaItem: MediaItem(
            id: '',
            title: 'Google',
            artUri: Uri(),
          ),
        ),
      ),
    );
  }

  Widget _buildPodcasts(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(kContentSpacing16),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 20,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisExtent: 220,
        ),
        itemBuilder: (context, index) {
          return PodcastCard(
            width: double.infinity,
            height: 180,
            onTap: () async {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    return const PodcastDetailScreen();
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

import '../../utilities/constant.dart';

class DownloadsScreen extends StatefulWidget {
  const DownloadsScreen({Key? key}) : super(key: key);

  @override
  State<DownloadsScreen> createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: kContentSpacing16),
        shrinkWrap: true,
        itemCount: 9,
        separatorBuilder: (conext, index) {
          return const Divider();
        },
        itemBuilder: (conext, index) {
          return const Text('');
        },
      ),
    );
  }

  dynamic _buildAppBar() {
    return AppBar(
      title: Text(
        'Downloads',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }

  Widget _buildNoSubscriptionsText() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            BootstrapIcons.arrow_down_circle,
            size: 64,
          ),
          const SizedBox(height: kContentSpacing12),
          Text(
            'No downloaded episode',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            'Tap the download button on any episode ',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
          ),
          Text(
            'to see new episodes at a glance',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
          ),
        ],
      ),
    );
  }
}

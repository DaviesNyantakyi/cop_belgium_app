import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

import '../../utilities/constant.dart';

class SubScriptionsScreen extends StatefulWidget {
  const SubScriptionsScreen({Key? key}) : super(key: key);

  @override
  State<SubScriptionsScreen> createState() => _SubScriptionsScreenState();
}

class _SubScriptionsScreenState extends State<SubScriptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Subscriptions',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(kContentSpacing16),
        shrinkWrap: true,
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: kContentSpacing8,
          mainAxisExtent: 250,
        ),
        itemBuilder: (context, index) {
          return const Text('');
        },
      ),
    );
  }

  Widget _buildNoSubscriptionsText() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            BootstrapIcons.folder_plus,
            size: 64,
          ),
          const SizedBox(height: kContentSpacing12),
          Text(
            'No subscriptions',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            'Tap the subscribe button on any podcast',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
          ),
          Text(
            ' to see new podcasts at a glance.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
          ),
        ],
      ),
    );
  }
}

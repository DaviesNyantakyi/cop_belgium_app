

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

import '../../utilities/constant.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: kContentSpacing16),
          child: Column(children: [
            _buildTile(
              leadingIcon: BootstrapIcons.folder,
              title: 'Subscriptions',
              trailingIcon: BootstrapIcons.chevron_right,
              onTap: () {},
            ),
            _buildTile(
              leadingIcon: BootstrapIcons.arrow_down_circle,
              title: 'Downloads',
              trailingIcon: BootstrapIcons.chevron_right,
              onTap: () {},
            ),
          ]),
        ),
      ),
    );
  }

  ListTile _buildTile({
    IconData? leadingIcon,
    required String title,
    IconData? trailingIcon,
    VoidCallback? onTap,
  }) {
    return ListTile(
      horizontalTitleGap: 0,
      leading: Icon(
        leadingIcon,
        color: kBlue,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      trailing: Icon(
        trailingIcon,
        color: kGrey,
      ),
      onTap: onTap,
    );
  }

  dynamic _buildAppBar() {
    return AppBar(
      title: Text(
        'Library',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

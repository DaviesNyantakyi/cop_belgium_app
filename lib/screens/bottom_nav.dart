import 'package:bootstrap_icons/bootstrap_icons.dart';

import 'package:cop_belgium_app/utilities/constant.dart';
import 'package:flutter/material.dart';

import 'podcast/podcast_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen>
    with WidgetsBindingObserver {
  int selectedIndex = 0;

  final List<Widget> screens = [
    const PodcastScreen(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screens[selectedIndex],
      ),
      bottomNavigationBar: _buildBottomNavBar(
        context: context,
        index: selectedIndex,
        onTap: (value) {
          if (mounted) {
            setState(() {
              selectedIndex = value;
            });
          }
        },
      ),
    );
  }
}

Widget _buildBottomNavBar({
  Function(int)? onTap,
  required int index,
  required BuildContext context,
}) {
  final caption = Theme.of(context).textTheme.bodySmall?.fontSize ?? 14.0;
  final bodyText2 = Theme.of(context).textTheme.bodyMedium;

  return BottomNavigationBar(
    backgroundColor: Colors.white,
    selectedItemColor: kBlue,
    unselectedItemColor: kBlack,
    selectedFontSize: caption, // Exception is thrown if not set to 0
    unselectedFontSize: caption, // Exception is thrown if not set to 0
    selectedLabelStyle: bodyText2,
    unselectedLabelStyle: bodyText2,
    currentIndex: index,
    type: BottomNavigationBarType.fixed,
    onTap: onTap,
    items: [
      _buildBottomNavItem(
        label: 'Podcasts',
        icon: BootstrapIcons.headphones,
      ),
      _buildBottomNavItem(
        label: 'Videos',
        icon: BootstrapIcons.camera_video,
      ),
      _buildBottomNavItem(
        label: 'Q&A',
        icon: BootstrapIcons.collection_play,
      ),
      _buildBottomNavItem(
        label: 'More',
        icon: BootstrapIcons.collection,
      ),
    ],
  );
}

BottomNavigationBarItem _buildBottomNavItem({
  required String label,
  required IconData icon,
}) {
  return BottomNavigationBarItem(
    label: label,
    tooltip: label,
    icon: Icon(
      icon,
      color: kGrey,
    ),
    activeIcon: Icon(
      icon,
      color: kBlue,
    ),
  );
}

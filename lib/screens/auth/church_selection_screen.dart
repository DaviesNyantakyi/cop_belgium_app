import 'package:cop_belgium_app/screens/bottom_nav.dart';
import 'package:cop_belgium_app/utilities/constant.dart';
import 'package:cop_belgium_app/widgets/church_tile.dart';
import 'package:cop_belgium_app/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class ChurchSelectionScreen extends StatefulWidget {
  final Future<bool> Function()? onWillPop;
  const ChurchSelectionScreen({Key? key, this.onWillPop}) : super(key: key);

  @override
  _ChurchSelectionScreenState createState() => _ChurchSelectionScreenState();
}

class _ChurchSelectionScreenState extends State<ChurchSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Church'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(kContentSpacing16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTextFormField(
                  hintText: 'Search',
                ),
                const SizedBox(height: kContentSpacing24),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ChurchTile(onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const BottomNavigationScreen(),
                        ),
                      );
                    });
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: kContentSpacing8,
                  ),
                  itemCount: 16,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

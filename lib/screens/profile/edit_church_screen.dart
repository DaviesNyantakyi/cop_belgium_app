import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilities/constant.dart';
import '../../widgets/church_tile.dart';
import '../../widgets/textfield.dart';

class EditChurchScreen extends StatefulWidget {
  final Future<bool> Function()? onWillPop;
  const EditChurchScreen({Key? key, this.onWillPop}) : super(key: key);

  @override
  _EditChurchScreenState createState() => _EditChurchScreenState();
}

class _EditChurchScreenState extends State<EditChurchScreen> {
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
                    return ChurchTile(onTap: () {});
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

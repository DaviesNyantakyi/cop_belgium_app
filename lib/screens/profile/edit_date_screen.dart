import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

import '../../utilities/constant.dart';
import '../../widgets/custom_buttons.dart';

class EditDateScreen extends StatefulWidget {
  const EditDateScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<EditDateScreen> createState() => _EditDateScreenState();
}

class _EditDateScreenState extends State<EditDateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: kContentSpacing16,
            vertical: kContentSpacing24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderText(),
              const SizedBox(height: kContentSpacing24),
              _datePicker(),
              const SizedBox(height: kContentSpacing32),
              _buildContinueButton()
            ],
          ),
        ),
      ),
    );
  }

  dynamic _buildAppBar() {
    return AppBar(
      title: Text(
        'Date of birth',
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildHeaderText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(' What\'s your date of birth?',
            style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }

  Widget _datePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomElevatedButton(
          height: kButtonHeight,
          side: const BorderSide(color: kBlue),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kContentSpacing8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  BootstrapIcons.calendar,
                  color: kBlack,
                  size: kIconSize,
                ),
                const SizedBox(width: kContentSpacing8),
                Text(
                  '',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildContinueButton() {
    return CustomElevatedButton(
      height: kButtonHeight,
      width: double.infinity,
      backgroundColor: kBlue,
      child: Text(
        'Update',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: kWhite,
            ),
      ),
      onPressed: () {},
    );
  }
}

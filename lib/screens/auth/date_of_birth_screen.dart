import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:cop_belgium_app/screens/auth/church_selection_screen.dart';
import 'package:flutter/material.dart';

import '../../utilities/constant.dart';
import '../../widgets/custom_buttons.dart';

class DateOfBirthScreen extends StatefulWidget {
  const DateOfBirthScreen({Key? key}) : super(key: key);

  @override
  State<DateOfBirthScreen> createState() => _DateOfBirthScreenState();
}

class _DateOfBirthScreenState extends State<DateOfBirthScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: kContentSpacing16,
              vertical: kContentSpacing24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _headerText(),
                const SizedBox(height: kContentSpacing24),
                _datePicker(),
                const SizedBox(height: kContentSpacing32),
                _continueButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _headerText() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.70,
      child: Text(
        'What\'s your date of birth',
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
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

  Widget _continueButton() {
    return CustomElevatedButton(
      height: kButtonHeight,
      width: double.infinity,
      backgroundColor: kBlue,
      child: Text(
        'Continue',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: kWhite,
            ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ChurchSelectionScreen(),
          ),
        );
      },
    );
  }
}

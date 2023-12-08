import 'package:cop_belgium_app/screens/auth/date_of_birth_screen.dart';
import 'package:flutter/material.dart';

import '../../utilities/constant.dart';
import '../../widgets/custom_buttons.dart';
import '../../widgets/gender_button.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
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
                _genderButtons(),
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
        'What\'s your gender Davies',
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _genderButtons() {
    return Row(
      children: [
        Expanded(
          child: GenderContianer(
            value: 'female',
            groupsValue: 'male',
            title: 'Male',
            image: 'assets/male.png',
            onChanged: (value) {},
          ),
        ),
        const SizedBox(width: kContentSpacing8),
        Expanded(
          child: GenderContianer(
            value: 'female',
            groupsValue: 'male',
            title: 'Female',
            image: 'assets/female.png',
            onChanged: (value) {},
          ),
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
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: kWhite),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DateOfBirthScreen(),
          ),
        );
      },
    );
  }
}

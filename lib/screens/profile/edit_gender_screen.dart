import 'package:flutter/material.dart';

import '../../utilities/constant.dart';
import '../../widgets/custom_buttons.dart';
import '../../widgets/gender_button.dart';

class EditGenderScreen extends StatefulWidget {
  const EditGenderScreen({Key? key}) : super(key: key);

  @override
  State<EditGenderScreen> createState() => _EditGenderScreenState();
}

class _EditGenderScreenState extends State<EditGenderScreen> {
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
              _buildGenderButtons(),
              const SizedBox(height: kContentSpacing32),
              _buildUpdateButton()
            ],
          ),
        ),
      ),
    );
  }

  dynamic _buildAppBar() {
    return AppBar(
      title: Text('Gender',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildHeaderText() {
    return Text(
      " What's your gender?",
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }

  Widget _buildGenderButtons() {
    return Row(
      children: [
        Expanded(
          child: GenderContianer(
            value: '',
            groupsValue: 'signUpProvider.selectedGender',
            title: 'Male',
            image: 'assets/male.png',
            onChanged: (value) {},
          ),
        ),
        const SizedBox(width: kContentSpacing8),
        Expanded(
          child: GenderContianer(
            value: '',
            groupsValue: '',
            title: 'Female',
            image: 'assets/female.png',
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }

  Widget _buildUpdateButton() {
    return CustomElevatedButton(
      height: kButtonHeight,
      backgroundColor: kBlue,
      width: double.infinity,
      child: Text(
        'Update',
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold, color: kWhite),
      ),
      onPressed: () {},
    );
  }
}

import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:cop_belgium_app/screens/auth/gender_screen.dart';
import 'package:flutter/material.dart';

import '../../utilities/constant.dart';
import '../../widgets/custom_buttons.dart';
import '../../widgets/textfield.dart';

class AddInfoScreen extends StatefulWidget {
  const AddInfoScreen({Key? key}) : super(key: key);

  @override
  State<AddInfoScreen> createState() => _AddInfoScreenState();
}

class _AddInfoScreenState extends State<AddInfoScreen> {
  bool obscureText = true;

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
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildHeaderText(),
                const SizedBox(height: kContentSpacing24),
                _buildFirstName(),
                const SizedBox(height: kContentSpacing8),
                _buildLastName(),
                const SizedBox(height: kContentSpacing8),
                _buildEmail(),
                const SizedBox(height: kContentSpacing8),
                _buildPasswordField(),
                const SizedBox(height: kContentSpacing32),
                _buildContinueButton(),
                const SizedBox(height: kContentSpacing32),
                _buildPolicyText()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderText() {
    return Text(
      'Add your info',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _buildFirstName() {
    return Form(
      child: CustomTextFormField(
        hintText: 'First name',
        textInputAction: TextInputAction.next,
        maxLines: 1,
        onChanged: (value) {},
      ),
    );
  }

  Widget _buildLastName() {
    return Form(
      child: CustomTextFormField(
        hintText: 'Last Name',
        textInputAction: TextInputAction.next,
        maxLines: 1,
        onChanged: (value) {},
      ),
    );
  }

  Widget _buildEmail() {
    return Form(
      child: CustomTextFormField(
        hintText: 'Email',
        textInputAction: TextInputAction.next,
        maxLines: 1,
        onChanged: (value) {},
      ),
    );
  }

  Widget _buildPasswordField() {
    return Form(
      child: CustomTextFormField(
        hintText: 'Password',
        textInputAction: TextInputAction.next,
        maxLines: 1,
        onChanged: (value) {},
        obscureText: true,
        suffixIcon: Material(
          color: Colors.transparent,
          clipBehavior: Clip.hardEdge,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          child: IconButton(
            tooltip: obscureText ? 'Show password' : 'Hide password',
            icon: Icon(
              obscureText ? BootstrapIcons.eye_slash : BootstrapIcons.eye,
              color: kBlack,
            ),
            onPressed: () {
              obscureText = !obscureText;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }

  Widget _buildContinueButton() {
    return CustomElevatedButton(
      height: kButtonHeight,
      backgroundColor: kBlue,
      width: double.infinity,
      child: Text(
        'Continue',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: kWhite,
            ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const GenderScreen(),
          ),
        );
      },
    );
  }

  Widget _buildPolicyText() {
    return Column(
      children: [
        Text(
          'By continuing, you agree to the ',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Text(
                'Privacy Policy',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold, color: kBlue),
              ),
              onTap: () {},
            ),
            Text(
              ' and ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Flexible(
              child: InkWell(
                child: Text(
                  'Terms of Conditions.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kBlue,
                      ),
                ),
                onTap: () {},
              ),
            ),
          ],
        )
      ],
    );
  }
}

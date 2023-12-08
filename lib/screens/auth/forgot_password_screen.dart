import 'package:flutter/material.dart';

import '../../utilities/constant.dart';
import '../../widgets/custom_buttons.dart';
import '../../widgets/textfield.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const SizedBox(height: kContentSpacing32),
              _buildEmailField(),
              const SizedBox(height: kContentSpacing32),
              _buildSendButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Forgot Password?',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: kContentSpacing8),
        Text(
          'Enter your email below to receive instructions on how to reset your password',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }

  Widget _buildEmailField() {
    return Form(
      child: CustomTextFormField(
        hintText: 'Email',
        textInputAction: TextInputAction.next,
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {},
      ),
    );
  }

  Widget _buildSendButton() {
    return CustomElevatedButton(
      backgroundColor: kBlue,
      height: kButtonHeight,
      width: double.infinity,
      child: Text(
        'Send',
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold, color: kWhite),
      ),
      onPressed: () {},
    );
  }
}

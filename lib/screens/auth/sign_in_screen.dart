import 'package:cop_belgium_app/screens/auth/add_info_screen.dart';
import 'package:cop_belgium_app/screens/auth/forgot_password_screen.dart';
import 'package:cop_belgium_app/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

import '../../utilities/constant.dart';
import '../../widgets/textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: _buildAppBar(),
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
                _buildEmailField(),
                const SizedBox(height: kContentSpacing8),
                _buildPasswordField(),
                const SizedBox(height: kContentSpacing32),
                _buildSignInButton(),
                const SizedBox(height: kContentSpacing24),
                _buildForgotPasswordButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(leading: Container());
  }

  Widget _buildHeaderText() {
    return Text(
      'Sign in with email and password',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
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

  Widget _buildPasswordField() {
    return Form(
      child: CustomTextFormField(
        hintText: 'Password',
        textInputAction: TextInputAction.next,
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {},
        obscureText: true,
      ),
    );
  }

  Widget _buildSignInButton() {
    return CustomElevatedButton(
      height: kButtonHeight,
      backgroundColor: kBlue,
      width: double.infinity,
      child: Text(
        'Sign in',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: kWhite,
            ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AddInfoScreen(),
          ),
        );
      },
    );
  }

  Widget _buildForgotPasswordButton() {
    return Center(
      child: InkWell(
        child: Text(
          'Forgot password?',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ForgotPasswordScreen(),
            ),
          );
        },
      ),
    );
  }
}

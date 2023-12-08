import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:cop_belgium_app/screens/auth/sign_in_screen.dart';
import 'package:cop_belgium_app/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

import '../../../utilities/constant.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: kContentSpacing16,
              vertical: kContentSpacing16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: kContentSpacing32),
                _buildImage(),
                const SizedBox(height: kContentSpacing32),
                _buildGoogleButton(),
                const SizedBox(height: kContentSpacing8),
                _buildAppleButton(),
                const SizedBox(height: kContentSpacing8),
                _buildEmailButton(),
                const SizedBox(height: kContentSpacing32),
                _buildSignInButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/cop.png'),
            ),
          ),
        ),
        const SizedBox(height: kContentSpacing20),
        Text(
          'Welcome to ',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: kBlue,
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          'The Church of Pentecost Belgium',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: kBlue,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }

  Widget _buildGoogleButton() {
    return CustomIconButton(
      height: kButtonHeight,
      leading: const Icon(
        BootstrapIcons.google,
        size: 30,
        color: kWhite,
      ),
      label: FittedBox(
        child: Text(
          'Continue with Google',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: kWhite,
              ),
        ),
      ),
      onPressed: () {},
    );
  }

  Widget _buildAppleButton() {
    return CustomIconButton(
      height: kButtonHeight,
      backgroundColor: kBlack,
      leading: const Icon(
        BootstrapIcons.apple,
        size: 32,
        color: kWhite,
      ),
      label: FittedBox(
        child: Text(
          'Continue with Apple',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: kWhite,
              ),
        ),
      ),
      onPressed: () {},
    );
  }

  Widget _buildEmailButton() {
    return CustomIconButton(
      height: kButtonHeight,
      leading: const Icon(
        BootstrapIcons.envelope_fill,
        size: 30,
        color: kWhite,
      ),
      label: FittedBox(
        child: Text(
          'Continue with Email',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: kWhite,
              ),
        ),
      ),
      onPressed: () {},
    );
  }

  Widget _buildSignInButton() {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignInScreen(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Already have an account? ',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'Sign in',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: kBlue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

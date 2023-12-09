import 'package:cop_belgium_app/main.dart';
import 'package:cop_belgium_app/screens/auth/church_selection_screen.dart';
import 'package:cop_belgium_app/screens/profile/edit_church_screen.dart';
import 'package:cop_belgium_app/screens/profile/edit_date_screen.dart';
import 'package:cop_belgium_app/screens/profile/edit_email_screen.dart';
import 'package:cop_belgium_app/screens/profile/edit_gender_screen.dart';
import 'package:cop_belgium_app/screens/profile/edit_name_screen.dart';
import 'package:cop_belgium_app/utilities/constant.dart';
import 'package:cop_belgium_app/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Info',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: kContentSpacing16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _ProfilePic(),
            const SizedBox(height: kContentSpacing32),
            _nameField(context: context),
            const SizedBox(height: kContentSpacing8),
            _emailField(context: context),
            const SizedBox(height: kContentSpacing8),
            _dateOfBirthField(context: context),
            const SizedBox(height: kContentSpacing8),
            _genderField(context: context),
            const SizedBox(height: kContentSpacing8),
            _churchField(context: context),
            const SizedBox(height: kContentSpacing32),
            _resetButton(),
            _deleteButton(),
          ],
        ),
      ),
    );
  }

  TextButton _deleteButton() {
    return TextButton(
      onPressed: () {},
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(
          EdgeInsets.all(0),
        ),
      ),
      child: const Text(
        'Delete account',
        style: TextStyle(color: kRed),
      ),
    );
  }

  TextButton _resetButton() {
    return TextButton(
      onPressed: () {},
      style: const ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
      child: const Text(
        'Reset Password',
        style: TextStyle(color: kBlack),
      ),
    );
  }

  CustomTextFormField _nameField({required BuildContext context}) {
    return CustomTextFormField(
      readOnly: true,
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const EditNameScreen(),
          ),
        );
      },
      suffixIcon: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const EditNameScreen(),
            ),
          );
        },
        icon: const Icon(
          Icons.chevron_right,
        ),
      ),
      hintText: 'Name',
    );
  }

  CustomTextFormField _emailField({required BuildContext context}) {
    return CustomTextFormField(
      readOnly: true,
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => const EditEmailScreen()),
        );
      },
      suffixIcon: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const EditEmailScreen(),
            ),
          );
        },
        icon: const Icon(
          Icons.chevron_right,
        ),
      ),
      hintText: 'Email',
    );
  }

  CustomTextFormField _dateOfBirthField({required BuildContext context}) {
    return CustomTextFormField(
      readOnly: true,
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const EditDateScreen(),
          ),
        );
      },
      suffixIcon: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const EditDateScreen(),
            ),
          );
        },
        icon: const Icon(
          Icons.chevron_right,
        ),
      ),
      hintText: '09 AUG 1999',
    );
  }

  CustomTextFormField _genderField({required BuildContext context}) {
    return CustomTextFormField(
      readOnly: true,
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => const EditGenderScreen()),
        );
      },
      suffixIcon: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const EditGenderScreen(),
            ),
          );
        },
        icon: const Icon(
          Icons.chevron_right,
        ),
      ),
      hintText: 'Female',
    );
  }

  CustomTextFormField _churchField({required BuildContext context}) {
    return CustomTextFormField(
      readOnly: true,
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const EditChurchScreen(),
          ),
        );
      },
      suffixIcon: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const EditChurchScreen(),
            ),
          );
        },
        icon: const Icon(
          Icons.chevron_right,
        ),
      ),
      hintText: 'Piwc Turnhout',
    );
  }
}

class _ProfilePic extends StatelessWidget {
  const _ProfilePic();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 48,
            backgroundImage: NetworkImage(kImageUrl),
          ),
          SizedBox(height: kContentSpacing4),
          Text(
            'Davies Nyantakyi',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

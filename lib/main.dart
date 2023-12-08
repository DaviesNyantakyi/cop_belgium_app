import 'package:cop_belgium_app/screens/auth/welcome_screen.dart';
import 'package:flutter/material.dart';

const kImageUrl =
    'https://images.unsplash.com/photo-1682687220305-ce8a9ab237b1?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

Future<void> main() async {
  await _init();
  runApp(const MyApp());
}

Future<void> _init() async {}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'COP Belgium',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: WelcomeScreen(),
        ),
      ),
    );
  }
}

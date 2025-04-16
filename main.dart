import 'package:flutter/material.dart';
import 'package:crazy_hk_channels/pages/welcome_page.dart';

void main() {
  runApp(const CrazyHKApp());
}

class CrazyHKApp extends StatelessWidget {
  const CrazyHKApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRAZY HK CHANNELS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
        primarySwatch: Colors.deepPurple,
      ),
      home: const WelcomePage(),
    );
  }
}

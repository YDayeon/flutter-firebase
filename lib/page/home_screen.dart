import 'package:flutter/material.dart';
import 'package:withuslaw_template/page/popup_test_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("withus_law")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PopUpTestPage())),
          child: const Text('popup'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:withuslaw_template/api/firebase_api.dart';
import 'package:withuslaw_template/page/popup_test_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    FirebaseApi().initPushNotifications();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseApi().initNotifications();

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

import 'package:flutter/material.dart';
import 'package:withuslaw_template/api/firebase_api.dart';
import 'package:withuslaw_template/page/event_format.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EventFormatPage())),
              child: const Text('popup'),
            ),
          ],
        ),
      ),
    );
  }
}

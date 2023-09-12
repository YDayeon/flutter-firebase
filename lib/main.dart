import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:withuslaw_template/api/firebase_api.dart';
import 'package:withuslaw_template/page/notification_page.dart';
import 'package:withuslaw_template/page/root_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Push Notification',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 40),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const RootPage(),
      routes: {
        NotificationPage.route: (context) => const NotificationPage(),
      },
    );
  }
}

// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:withuslaw_template/main.dart';
import 'package:withuslaw_template/notification.dart';
import 'package:withuslaw_template/page/notification_screen.dart';

Future<void> handleBackgroundMessgae(RemoteMessage message) async {
  // notification 알림 띄우기
  FlutterLocalNotification.showNotification(message.notification);

  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
}

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  final _androidChannel = const AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notification',
    importance: Importance.max,
  );
  final _localNotifications = FlutterLocalNotificationsPlugin();

  void handleMessage(RemoteMessage? message) {
    if (message == null) return;

    navigatorKey.currentState?.pushNamed(
      NotificationScreen.route,
      arguments: message,
    );
  }

  Future initLocalNotifications() async {
    const iOS = DarwinInitializationSettings();
    const android = AndroidInitializationSettings('@drawable/ic_launcher');
    const settings = InitializationSettings(android: android, iOS: iOS);

    await _localNotifications.initialize(
      settings,
      // triggers when a user clicks on a local notification
      onDidReceiveNotificationResponse: (details) {
        final payload = details.payload ?? '';
        final message = RemoteMessage.fromMap(jsonDecode(payload));
        print("message=================>$message");
        handleMessage(message);
      },
    );

    final platform = _localNotifications.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();
    await platform?.createNotificationChannel(_androidChannel);
  }

  Future initPushNotifications() async {
    // essential for the IOS
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    // when the app is opened from a terminated state via notification
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    // when the application opened from the background state via notification
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessgae);
    FirebaseMessaging.onMessage.listen(onFirebaseMessage);
  }

  void onFirebaseMessage(message) async {
    final notification = message.notification;

    if (notification == null) return;

    // notification 알림 띄우기
    await FlutterLocalNotification.showNotification(notification);

    await _localNotifications.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          _androidChannel.id,
          _androidChannel.name,
          channelDescription: _androidChannel.description,
          icon: '@drawable/ic_launcher',
        ),
      ),
      payload: jsonEncode(
        message.toMap(),
      ),
    );
  }

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission(); // request permission to user
    final fCMToken = await _firebaseMessaging.getToken();
    print('Token================> $fCMToken');

    initPushNotifications();
    initLocalNotifications();

    // 3초 후 권한 요청
    Future.delayed(const Duration(seconds: 3),
        FlutterLocalNotification.requestNotificationPermission());
  }
}

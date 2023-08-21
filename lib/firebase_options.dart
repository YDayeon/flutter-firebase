// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBXip-gk0p6_sIUSj8J8RFoNyKKVVhcrW4',
    appId: '1:669272557825:web:6ba966732f4f982bf43300',
    messagingSenderId: '669272557825',
    projectId: 'pushnotification-b68ec',
    authDomain: 'pushnotification-b68ec.firebaseapp.com',
    databaseURL: 'https://pushnotification-b68ec-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pushnotification-b68ec.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAnE8F6XflDaXSJF813xcnlSAMrtLqeAb4',
    appId: '1:669272557825:android:8e719c6346c79f3cf43300',
    messagingSenderId: '669272557825',
    projectId: 'pushnotification-b68ec',
    databaseURL: 'https://pushnotification-b68ec-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pushnotification-b68ec.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAIQ4XXrUcrx9EfASk8a8_105yfRVc6zeA',
    appId: '1:669272557825:ios:4f0ab0bb847c8782f43300',
    messagingSenderId: '669272557825',
    projectId: 'pushnotification-b68ec',
    databaseURL: 'https://pushnotification-b68ec-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pushnotification-b68ec.appspot.com',
    iosClientId: '669272557825-sbug48fhuijlapnjffkiom6nef96gmm4.apps.googleusercontent.com',
    iosBundleId: 'com.example.withuslawTemplate',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAIQ4XXrUcrx9EfASk8a8_105yfRVc6zeA',
    appId: '1:669272557825:ios:b49e062430542963f43300',
    messagingSenderId: '669272557825',
    projectId: 'pushnotification-b68ec',
    databaseURL: 'https://pushnotification-b68ec-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pushnotification-b68ec.appspot.com',
    iosClientId: '669272557825-i6nvmp9gtdirci2la7gfcpi3j98cghc2.apps.googleusercontent.com',
    iosBundleId: 'com.example.withuslawTemplate.RunnerTests',
  );
}

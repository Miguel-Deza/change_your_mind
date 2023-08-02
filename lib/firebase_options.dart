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
    apiKey: 'AIzaSyAI23fJOyj3HwT3irk9Q27bYcZABM8su3A',
    appId: '1:579619648357:web:47529b5ffca6157e56e78c',
    messagingSenderId: '579619648357',
    projectId: 'change-your-mind-ab9f0',
    authDomain: 'change-your-mind-ab9f0.firebaseapp.com',
    storageBucket: 'change-your-mind-ab9f0.appspot.com',
    measurementId: 'G-52116PVPSL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXdnEeppKgCciOyUGHuGZy87Dj_wgOAJA',
    appId: '1:579619648357:android:613355618ca9072756e78c',
    messagingSenderId: '579619648357',
    projectId: 'change-your-mind-ab9f0',
    storageBucket: 'change-your-mind-ab9f0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbCXGm6g90bNiWMwQVRd3kI3JCrJOPqJY',
    appId: '1:579619648357:ios:8c9699434cdbb25256e78c',
    messagingSenderId: '579619648357',
    projectId: 'change-your-mind-ab9f0',
    storageBucket: 'change-your-mind-ab9f0.appspot.com',
    iosClientId: '579619648357-5l12j30vdoc326ila39u80i4091mo5of.apps.googleusercontent.com',
    iosBundleId: 'com.example.changeYourMind',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbCXGm6g90bNiWMwQVRd3kI3JCrJOPqJY',
    appId: '1:579619648357:ios:d4717bc29c3df53b56e78c',
    messagingSenderId: '579619648357',
    projectId: 'change-your-mind-ab9f0',
    storageBucket: 'change-your-mind-ab9f0.appspot.com',
    iosClientId: '579619648357-oq21bk7lrgupa1jqaddil6rr2p7oocic.apps.googleusercontent.com',
    iosBundleId: 'com.example.changeYourMind.RunnerTests',
  );
}
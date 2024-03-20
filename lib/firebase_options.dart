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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBK25YuOntmWn8YKaJbqk7FSD-lVknv23A',
    appId: '1:253777213968:web:898757b6c1e40b1aa22895',
    messagingSenderId: '253777213968',
    projectId: 'ssoauth-2cf6e',
    authDomain: 'ssoauth-2cf6e.firebaseapp.com',
    storageBucket: 'ssoauth-2cf6e.appspot.com',
    measurementId: 'G-0L7S0CS4GH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyN6NE8dngU-BqYQo5EklmUTgoA6wDtIc',
    appId: '1:253777213968:android:7908ab59eef90e04a22895',
    messagingSenderId: '253777213968',
    projectId: 'ssoauth-2cf6e',
    storageBucket: 'ssoauth-2cf6e.appspot.com',
  );
}
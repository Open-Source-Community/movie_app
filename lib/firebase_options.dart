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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD2OeG2quYhbmlJAXUj46-1vEAsDJLNQ5o',
    appId: '1:1090812998724:android:2f5100aaf5001c297ef811',
    messagingSenderId: '1090812998724',
    projectId: 'ecommercestore-d1aa5',
    storageBucket: 'ecommercestore-d1aa5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBC1hbUsWben3QaoVSIM0OYxpmYmtOJyYE',
    appId: '1:1090812998724:ios:452bacc2f0bf4fb07ef811',
    messagingSenderId: '1090812998724',
    projectId: 'ecommercestore-d1aa5',
    storageBucket: 'ecommercestore-d1aa5.appspot.com',
    androidClientId: '1090812998724-48q3g5q6vg9l0ms2s0imo9dgu3gi1op3.apps.googleusercontent.com',
    iosClientId: '1090812998724-so65de5d46kfjs6sgumvsfhuqb6lofdu.apps.googleusercontent.com',
    iosBundleId: 'com.example.storeApp',
  );
}

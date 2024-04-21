// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyBmJ3kZZ9E2ep6gEyjbuj-RJaUoHSoSyuU',
    appId: '1:704454907992:web:505d44153135b34b13922d',
    messagingSenderId: '704454907992',
    projectId: 'ci-cd-11c74',
    authDomain: 'ci-cd-11c74.firebaseapp.com',
    storageBucket: 'ci-cd-11c74.appspot.com',
    measurementId: 'G-34XHHM9FLY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAt2Vvf94vxC9Syu4n_OiPPs00bNhcoto',
    appId: '1:704454907992:android:9afb7a162a86dd9313922d',
    messagingSenderId: '704454907992',
    projectId: 'ci-cd-11c74',
    storageBucket: 'ci-cd-11c74.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsHBXnM02akuBWUhVu4Rdn8XZyzSvvTjo',
    appId: '1:704454907992:ios:0c41a75beed9d83513922d',
    messagingSenderId: '704454907992',
    projectId: 'ci-cd-11c74',
    storageBucket: 'ci-cd-11c74.appspot.com',
    iosBundleId: 'com.example.ciCd',
  );
}
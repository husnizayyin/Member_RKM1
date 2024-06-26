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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDzn5DdRYWEA4C0rrU7cgMFY7D7xuf4KmQ',
    appId: '1:251636051142:web:b5ea164511484c168afbc7',
    messagingSenderId: '251636051142',
    projectId: 'rkm-member-32881',
    authDomain: 'rkm-member-32881.firebaseapp.com',
    storageBucket: 'rkm-member-32881.appspot.com',
    measurementId: 'G-CJJD7VQZ5E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC9mFRf5C-g9KTpjoNN92XUtCqUtiljEBI',
    appId: '1:251636051142:android:519285a02c8cb2468afbc7',
    messagingSenderId: '251636051142',
    projectId: 'rkm-member-32881',
    storageBucket: 'rkm-member-32881.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDK4pYDuOojpeMdDBry_y1PDgqG-hlmuN8',
    appId: '1:251636051142:ios:1dbd55b45b45c1308afbc7',
    messagingSenderId: '251636051142',
    projectId: 'rkm-member-32881',
    storageBucket: 'rkm-member-32881.appspot.com',
    iosBundleId: 'id.co.member.rkm.memberRkm2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDK4pYDuOojpeMdDBry_y1PDgqG-hlmuN8',
    appId: '1:251636051142:ios:1dbd55b45b45c1308afbc7',
    messagingSenderId: '251636051142',
    projectId: 'rkm-member-32881',
    storageBucket: 'rkm-member-32881.appspot.com',
    iosBundleId: 'id.co.member.rkm.memberRkm2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDzn5DdRYWEA4C0rrU7cgMFY7D7xuf4KmQ',
    appId: '1:251636051142:web:b323a10a6f1a30c68afbc7',
    messagingSenderId: '251636051142',
    projectId: 'rkm-member-32881',
    authDomain: 'rkm-member-32881.firebaseapp.com',
    storageBucket: 'rkm-member-32881.appspot.com',
    measurementId: 'G-PV90V1JEBR',
  );

}
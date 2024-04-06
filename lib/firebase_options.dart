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
    apiKey: 'AIzaSyCICI41YWTpzfdDIRTf4KIFdmH0FT1c_ew',
    appId: '1:867586225245:web:072d88fedd7f6de5c689b4',
    messagingSenderId: '867586225245',
    projectId: 'boleia-app-3a8f9',
    authDomain: 'boleia-app-3a8f9.firebaseapp.com',
    storageBucket: 'boleia-app-3a8f9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqarJ4PseB1UXi5csax0cOXpWEnzeyr7o',
    appId: '1:867586225245:android:3f3c239e109ebd8dc689b4',
    messagingSenderId: '867586225245',
    projectId: 'boleia-app-3a8f9',
    storageBucket: 'boleia-app-3a8f9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6SKl3aGqtzq2m6W9pQukk4TIccB-hGhQ',
    appId: '1:867586225245:ios:417ba8386add0bcac689b4',
    messagingSenderId: '867586225245',
    projectId: 'boleia-app-3a8f9',
    storageBucket: 'boleia-app-3a8f9.appspot.com',
    iosBundleId: 'com.example.boleiaApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6SKl3aGqtzq2m6W9pQukk4TIccB-hGhQ',
    appId: '1:867586225245:ios:f8efacabb413e3e4c689b4',
    messagingSenderId: '867586225245',
    projectId: 'boleia-app-3a8f9',
    storageBucket: 'boleia-app-3a8f9.appspot.com',
    iosBundleId: 'com.example.boleiaApp.RunnerTests',
  );
}

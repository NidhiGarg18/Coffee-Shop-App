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
    apiKey: 'AIzaSyCNRIj6qhvBVR2uKo_QdvczJBWRXP2c6FA',
    appId: '1:457518345304:web:cd2b4a0b535b989156ae2d',
    messagingSenderId: '457518345304',
    projectId: 'coffee-51657',
    authDomain: 'coffee-51657.firebaseapp.com',
    storageBucket: 'coffee-51657.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCOIRP8L05A-DUbCg-S8WUiGV3y2v1RSmk',
    appId: '1:457518345304:android:cbeb30497d089b4d56ae2d',
    messagingSenderId: '457518345304',
    projectId: 'coffee-51657',
    storageBucket: 'coffee-51657.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgviJH89SvnhG8T6YiK0Uk-Q4XogPrsCQ',
    appId: '1:457518345304:ios:92810d890df35fe356ae2d',
    messagingSenderId: '457518345304',
    projectId: 'coffee-51657',
    storageBucket: 'coffee-51657.appspot.com',
    iosClientId: '457518345304-lgjncft6feguir1d1lrbnvarrromd2c1.apps.googleusercontent.com',
    iosBundleId: 'com.example.coffee',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgviJH89SvnhG8T6YiK0Uk-Q4XogPrsCQ',
    appId: '1:457518345304:ios:92810d890df35fe356ae2d',
    messagingSenderId: '457518345304',
    projectId: 'coffee-51657',
    storageBucket: 'coffee-51657.appspot.com',
    iosClientId: '457518345304-lgjncft6feguir1d1lrbnvarrromd2c1.apps.googleusercontent.com',
    iosBundleId: 'com.example.coffee',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCNRIj6qhvBVR2uKo_QdvczJBWRXP2c6FA',
    appId: '1:457518345304:web:bd904669b433dc5856ae2d',
    messagingSenderId: '457518345304',
    projectId: 'coffee-51657',
    authDomain: 'coffee-51657.firebaseapp.com',
    storageBucket: 'coffee-51657.appspot.com',
  );

}
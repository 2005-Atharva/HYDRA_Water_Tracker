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
    apiKey: 'AIzaSyD1ebSdBnQ0aoFOssugDn600_BbQIVQKI4',
    appId: '1:1086990656025:web:0823119703a9c4df0c4088',
    messagingSenderId: '1086990656025',
    projectId: 'h-y-d-r-a-e4874',
    authDomain: 'h-y-d-r-a-e4874.firebaseapp.com',
    storageBucket: 'h-y-d-r-a-e4874.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCIw0VAeBD4KGd0YJaCtq7LX7k27BMlIEQ',
    appId: '1:1086990656025:android:f6ce300edccc33d00c4088',
    messagingSenderId: '1086990656025',
    projectId: 'h-y-d-r-a-e4874',
    storageBucket: 'h-y-d-r-a-e4874.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCO1VmySzFCpx7Jip8F7MnjrRMuNVz6eGg',
    appId: '1:1086990656025:ios:13bdfd333cd5c6240c4088',
    messagingSenderId: '1086990656025',
    projectId: 'h-y-d-r-a-e4874',
    storageBucket: 'h-y-d-r-a-e4874.firebasestorage.app',
    iosBundleId: 'com.example.hydra',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCO1VmySzFCpx7Jip8F7MnjrRMuNVz6eGg',
    appId: '1:1086990656025:ios:13bdfd333cd5c6240c4088',
    messagingSenderId: '1086990656025',
    projectId: 'h-y-d-r-a-e4874',
    storageBucket: 'h-y-d-r-a-e4874.firebasestorage.app',
    iosBundleId: 'com.example.hydra',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD1ebSdBnQ0aoFOssugDn600_BbQIVQKI4',
    appId: '1:1086990656025:web:8dcf76fa865acc330c4088',
    messagingSenderId: '1086990656025',
    projectId: 'h-y-d-r-a-e4874',
    authDomain: 'h-y-d-r-a-e4874.firebaseapp.com',
    storageBucket: 'h-y-d-r-a-e4874.firebasestorage.app',
  );
}

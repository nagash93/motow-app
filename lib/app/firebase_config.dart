import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'firebase_options.dart';

class FirebaseConfig {
  static Future<void> initializeApp() async {
    await _initializeFirebaseApp();
    _initializeFirestore(useEmulator: false);
  }

  static Future<void> _initializeFirebaseApp() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  static void _initializeFirestore({
    bool useEmulator = kDebugMode,
    int port = 8080,
  }) {
    if (useEmulator) {
      FirebaseFirestore.instance.useFirestoreEmulator('localhost', port);
    }
  }
}

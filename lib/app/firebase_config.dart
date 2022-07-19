import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'firebase_options.dart';

class FirebaseConfig {
  static Future<void> initializeFirebaseApp() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  static void initializeFirestore({
    bool shouldUseFirestoreEmulator = kDebugMode,
    int port = 8080,
  }) {
    if (shouldUseFirestoreEmulator) {
      FirebaseFirestore.instance.useFirestoreEmulator('localhost', port);
    }
  }
}

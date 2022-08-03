import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motow_app/app/firebase_config.dart';
import 'package:motow_app/app/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseConfig.initializeFirebaseApp().whenComplete(
    () => FirebaseConfig.initializeFirestore(),
  );

  runApp(const ProviderScope(child: MyApp()));
}

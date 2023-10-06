import 'package:flutter/material.dart';

import 'package:motow_app/app/firebase_config.dart';
import 'package:motow_app/app/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseConfig.initializeApp();

  runApp(const MyApp());

}

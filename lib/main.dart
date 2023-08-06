import 'package:flutter/material.dart';

import 'package:motow_app/app/firebase_config.dart';
import 'package:motow_app/app/general_providers.dart';
import 'package:motow_app/app/my_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseConfig.initializeApp();

  runApp(const MyApp());

}

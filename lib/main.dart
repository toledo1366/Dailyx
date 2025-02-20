import 'package:auth/auth_exports.dart';
import 'package:dailyx/core/db/register_adapters.dart';
import 'package:dailyx/core/routing/app_router.dart';
import 'package:dailyx/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'core/di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeTools();
  
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

Future<void> _initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
}

Future<void> _initializeTools() async {
  await _initializeFirebase();
  await Hive.initFlutter();
  await AuthLib().init(di);
  registerAdapters();
  await configureDependencies();
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,  
      debugShowCheckedModeBanner: false,  
    );
  }
}
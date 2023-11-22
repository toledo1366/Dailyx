import 'package:dailyx/core/locator/locator.dart';
import 'package:dailyx/core/routing/app_router.dart';
import 'package:dailyx/presentation/pages/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await _initializeTools();
  
  runApp(const MyApp());
}

Future<void> initFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

Future<void> _initializeTools() async {
  await configureDependencies();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    
    return MaterialApp.router(            
      routerConfig: appRouter.config(),  
      debugShowCheckedModeBanner: false,       
    );
  }
}

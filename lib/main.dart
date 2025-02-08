// main.dart
import 'package:fire2/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      title: 'Fire2',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
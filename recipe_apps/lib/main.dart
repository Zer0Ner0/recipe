import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyRecipeApp());
}

class MyRecipeApp extends StatefulWidget {
  const MyRecipeApp({super.key});

  @override
  State<MyRecipeApp> createState() => _MyRecipeAppState();
}

class _MyRecipeAppState extends State<MyRecipeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        // scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const SplashScreen(), // ✅ Directly load SplashScreen
    );
  }
}

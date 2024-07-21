import 'package:flutter/material.dart';
import 'package:spltwise_clone/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide.none,
    );
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.only(left: 25),
          border: border,
          disabledBorder: border,
          enabledBorder: border,
          focusedBorder: border,
          filled: true,
          fillColor: const Color.fromRGBO(236, 236, 236, 1),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            iconSize: 24,
          ),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

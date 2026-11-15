
import 'package:flutter/material.dart';
import 'screens/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rival Hermawan',
      theme: ThemeData(
        colorSchemeSeed: Colors.blueAccent,
        brightness: Brightness.light,
      ),

      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blueAccent,
        brightness: Brightness.dark,
      ),

      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,

      home: const ProfilePage(
        isDarkMode: isDarkMode,
        onThemeChanged: toggleTheme,
      ),
    );
  }
}


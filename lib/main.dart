import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yemeksepeti/screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTheme.title,
      home: const HomeScreen(),
      theme: ThemeData(
        primaryColor: AppTheme.primaryColor,
        appBarTheme: AppBarTheme(
            color: AppTheme.primaryColor,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            iconTheme: IconThemeData(color: AppTheme.appbarColor),
            titleTextStyle: AppTheme.appbarTextStyle),
      ),
    );
  }
}

class AppTheme {
  static Color primaryColor = const Color(0xFFea004b);
  static Color appbarColor = Colors.white;
  static double appbarFontsize = 24;
  static TextStyle appbarTextStyle = TextStyle(
    color: AppTheme.appbarColor,
    fontSize: AppTheme.appbarFontsize,
    fontWeight: FontWeight.w600,
  );
  static String title = "Yemeksepeti";
}

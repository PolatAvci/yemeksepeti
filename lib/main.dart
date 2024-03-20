import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yemeksepeti/screens/home_screen.dart';
import 'package:yemeksepeti/screens/login_with_email_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTexts.title,
      home: const HomeScreen(),
      theme: ThemeData(
        primaryColor: AppTheme.primaryColor,
        appBarTheme: AppBarTheme(
            color: AppTheme.primaryColor,
            systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
              statusBarColor: AppTheme.primaryColor,
            ),
            iconTheme: IconThemeData(color: AppTheme.appbarTextColor),
            titleTextStyle: AppTheme.appbarTextStyle),
      ),
    );
  }
}

class AppTheme {
  static Color primaryColor = const Color(0xFFea004b);
  static Color appbarTextColor = Colors.white;
  static Color searchBarHintColor = Colors.grey;
  static Color textColor = Colors.black;
  static Color textGrey = Colors.grey;
  static Color loginAppBarColor = Colors.white;
  static Color customContainerColor = const Color.fromARGB(255, 243, 243, 243);
  static Color customContainerColor2 = Colors.white;
  static double mainPadding = 10;
  static double fontsize15 = 15;
  static double fontsize16 = 16;
  static FontWeight fontWeightw400 = FontWeight.w400;
  static FontWeight fontWeightw600 = FontWeight.w600;
  static TextStyle appbarTextStyle = TextStyle(
    color: AppTheme.appbarTextColor,
    fontSize: AppTheme.fontsize15,
    fontWeight: fontWeightw400,
  );
}

class AppTexts {
  static String title = "Yemeksepeti";
  static String appBarSearchHint = "Restoran veya mağaza arayın";
  static String appBarLocation1 = "Deneme abcde cd.";
  static String appBarLocation2 = "abcde fvjfnbjk ";
}

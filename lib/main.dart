import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yemeksepeti/screens/restaurant_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTexts.title,
      home: const RestaurantPage(),
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
  static Color primaryColor = const Color.fromRGBO(250, 0, 80, 1);
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

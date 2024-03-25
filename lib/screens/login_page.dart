// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:yemeksepeti/components/buton.dart';
import 'package:yemeksepeti/main.dart';
import 'package:yemeksepeti/screens/login_with_email_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: AppTheme.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/yemeksepeti.png",
                    height: 150,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              padding: EdgeInsets.fromLTRB(10, 23, 10, 20),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '  Kaydol veya giriş yap',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '  select to preferred method to continue',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 20),
                  Buton(
                      icon: Icons.g_mobiledata,
                      text: "Google ile devam et",
                      buttonColor: Colors.white,
                      textColor: Colors.black,
                      fontSize: 15,
                      onPressed: () {}),
                  SizedBox(height: 13),
                  Buton(
                      icon: Icons.facebook,
                      text: "Facebook ile devam et",
                      buttonColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 15,
                      onPressed: () {}),
                  SizedBox(height: 17),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1.2,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            "veya",
                            style: TextStyle(
                                color: Colors.grey[700], fontSize: 12),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1.2,
                            color: Colors.grey[400],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 17),
                  Buton(
                      icon: Icons.mail_outline_outlined,
                      text: "E-posta ile devam et",
                      buttonColor: AppTheme.primaryColor,
                      textColor: Colors.white,
                      fontSize: 15,
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => LoginWithEmailScreen())))),
                  SizedBox(height: 17),
                  Center(
                    child: Flexible(
                      child: RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                              children: [
                                TextSpan(text: "Devam etmek suretiyle "),
                                TextSpan(
                                    style:
                                        TextStyle(color: AppTheme.primaryColor),
                                    text: "Kullanım Koşulları "),
                                TextSpan(text: "ve "),
                                TextSpan(
                                    style:
                                        TextStyle(color: AppTheme.primaryColor),
                                    text: "Gizlilik Politikamızı ")
                              ])),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

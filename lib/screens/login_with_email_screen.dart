import "package:flutter/material.dart";
import "package:yemeksepeti/components/custom_text_field.dart";
import "package:yemeksepeti/main.dart";
import "package:yemeksepeti/screens/login_with_password_screen.dart";

class LoginWithEmailScreen extends StatefulWidget {
  const LoginWithEmailScreen({super.key});

  @override
  State<LoginWithEmailScreen> createState() => _LoginWithEmailScreenState();
}

class _LoginWithEmailScreenState extends State<LoginWithEmailScreen> {
  String _inputText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.loginAppBarColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppTheme.primaryColor,
          ),
          onPressed: () {},
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: LoginAppBarTheme.actionsPadding),
              child: TextButton(
                onPressed: _inputText.isEmpty
                    ? null
                    : () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginWithPasswordScreen(
                                      email: _inputText,
                                    )));
                      },
                child: Text(
                  LoginAppBarTheme.continueText,
                  style: TextStyle(
                      color: _inputText.isEmpty ? null : AppTheme.primaryColor,
                      fontWeight: AppTheme.fontWeightw600),
                ),
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(LoginAppBarTheme.mainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(LoginAppBarTheme.emailImage),
            const SizedBox(
              height: 30,
            ),
            Text(
              LoginAppBarTheme.title,
              style: TextStyle(
                  fontSize: LoginAppBarTheme.titleFontsize,
                  fontWeight: AppTheme.fontWeightw600),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(LoginAppBarTheme.subTitle),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              label: "E-posta",
              onChanged: (text) {
                setState(() {
                  _inputText = text;
                });
              },
            ),
            const Spacer(),
            Row(children: [
              Expanded(
                  child: FilledButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              _inputText.isEmpty
                                  ? Colors.grey[400]
                                  : AppTheme.primaryColor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed: _inputText.isEmpty
                          ? null
                          : () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          LoginWithPasswordScreen(
                                            email: _inputText,
                                          )));
                            },
                      child: const Text(
                        "Devam et",
                        style: TextStyle(color: Colors.white),
                      )))
            ]),
          ],
        ),
      ),
    );
  }
}

class LoginAppBarTheme {
  static String continueText = "Devam et";
  static double actionsPadding = 20;
  static double mainPadding = 20;
  static String emailImage = "images/email.png";
  static String title = "E-postanızı girin.";
  static String subTitle = "Hesabınızın olup olmadğını kontrol edeceğiz";
  static double titleFontsize = 26;
}

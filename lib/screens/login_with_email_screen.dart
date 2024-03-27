import "package:flutter/material.dart";
import "package:yemeksepeti/components/custom_text_field.dart";
import "package:yemeksepeti/main.dart";
import "package:yemeksepeti/screens/login_with_password_screen.dart";
import 'package:yemeksepeti/auth_service.dart';

class LoginWithEmailScreen extends StatefulWidget {
  const LoginWithEmailScreen({super.key});

  @override
  State<LoginWithEmailScreen> createState() => _LoginWithEmailScreenState();
}

class _LoginWithEmailScreenState extends State<LoginWithEmailScreen> {
  String _inputText = "";
  final _auth = AuthService();
  final _email = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _email.dispose();
  }

  Widget _buildErrorText(bool isValid) {
    return isValid
        ? const SizedBox() // Geçerli ise boş bir container döndür
        : const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              'Geçerli bir e-posta adresi girin',
              style: TextStyle(color: Colors.red),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    bool isEmailValid =
        _isValidEmail(_inputText); // E-postanın doğruluğunu kontrol et

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.loginAppBarColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppTheme.primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: LoginAppBarTheme.actionsPadding),
              child: TextButton(
                onPressed: isEmailValid
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginWithPasswordScreen(
                                      email: _inputText,
                                    )));
                      }
                    : null,
                child: Text(
                  LoginAppBarTheme.continueText,
                  style: TextStyle(
                    color:
                        isEmailValid ? AppTheme.primaryColor : Colors.grey[400],
                    fontWeight: AppTheme.fontWeightw600,
                  ),
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
              hint: "Email girin:",
              label: "E-posta",
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              onChanged: (text) {
                setState(() {
                  _inputText = text;
                });
              },
            ),
            _buildErrorText(isEmailValid),
            const Spacer(),
            Row(children: [
              Expanded(
                  child: FilledButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              isEmailValid
                                  ? AppTheme.primaryColor
                                  : Colors.grey[400]),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed:
                          isEmailValid // E-posta geçerliyse devam et butonunu etkinleştir
                              ? () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LoginWithPasswordScreen(
                                                email: _inputText,
                                              )));
                                }
                              : null,
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

bool _isValidEmail(String email) {
  // Basit bir e-posta doğrulama kontrolü yapabilirsiniz
  // Burada daha kapsamlı bir e-posta doğrulama işlemi uygulayabilirsiniz
  return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
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

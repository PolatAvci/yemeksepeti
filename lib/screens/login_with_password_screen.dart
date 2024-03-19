import 'package:flutter/material.dart';
import 'package:yemeksepeti/components/custom_text_field.dart';
import 'package:yemeksepeti/main.dart';
import 'package:yemeksepeti/screens/login_with_email_screen.dart';

class LoginWithPasswordScreen extends StatefulWidget {
  const LoginWithPasswordScreen({super.key, required this.email});
  final String email;

  @override
  State<LoginWithPasswordScreen> createState() =>
      _LoginWithPasswordScreenState();
}

class _LoginWithPasswordScreenState extends State<LoginWithPasswordScreen> {
  String _inputText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            color: AppTheme.primaryColor,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            }),
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
              "E-postanızla giriş yapın",
              style: TextStyle(
                  fontSize: LoginAppBarTheme.titleFontsize,
                  fontWeight: AppTheme.fontWeightw600),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              Flexible(
                child: RichText(
                    text: TextSpan(
                        style: const TextStyle(color: Colors.black),
                        children: [
                      TextSpan(
                          text: widget.email,
                          style:
                              TextStyle(fontWeight: AppTheme.fontWeightw600)),
                      const TextSpan(
                          text: " adresinin şifresi ile giriş yapabilirsiniz."),
                    ])),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
                label: "Şifre",
                password: true,
                onChanged: (text) {
                  setState(() {
                    _inputText = text;
                  });
                }),
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
                      onPressed: _inputText.isEmpty ? null : () {},
                      child: const Text(
                        "Şifre ile giriş yap",
                        style: TextStyle(color: Colors.white),
                      )))
            ]),
          ],
        ),
      ),
    );
  }
}

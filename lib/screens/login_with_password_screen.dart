import 'package:flutter/material.dart';
import 'package:yemeksepeti/components/custom_text_field.dart';
import 'package:yemeksepeti/main.dart';
import 'package:yemeksepeti/screens/home_screen.dart';
import 'package:yemeksepeti/auth_service.dart'; // AuthService'ı doğru şekilde dahil ettiğinizden emin olun

class LoginWithPasswordScreen extends StatefulWidget {
  const LoginWithPasswordScreen({Key? key, required this.email}) : super(key: key);
  final String email;

  @override
  State<LoginWithPasswordScreen> createState() => _LoginWithPasswordScreenState();
}

class _LoginWithPasswordScreenState extends State<LoginWithPasswordScreen> {
  String _inputText = "";
  late final AuthService _auth;
  final _password = TextEditingController();

  @override
  void initState() {
    super.initState();
    _auth = AuthService();
  }

  @override
  void dispose() {
    super.dispose();
    _password.dispose();
  }

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
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/email.png"),
            const SizedBox(height: 30),
            const Text(
              "E-postanızla giriş yapın.",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: widget.email,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: " adresinin şifresi ile giriş yapabilirsiniz."),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hint: "Şifrenizi girin:",
              label: "Şifre",
              controller: _password,
              password: true,
              onChanged: (text) {
                setState(() {
                  _inputText = text;
                });
              },
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _inputText.isEmpty ? null : () => _signInWithEmail(widget.email, _inputText),
                    child: const Text("Şifre ile giriş yap"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _signInWithEmail(String email, String password) async {
    try {
      final user = await _auth.loginUserWithEmailAndPassword(email, password);
      if (user != null) {
        // Handle successful sign-in, navigate to appropriate screen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      } else {
        // Handle unsuccessful sign-in
        ScaffoldMessenger.of(context).showSnackBar(
           const SnackBar(
                content: Text('Şifre yanlış. Lütfen tekrar deneyin.'),
                duration: Duration(seconds: 2), // İsteğe bağlı: SnackBar'ın görüntülenme süresi
           ),);
      }
    } catch (e) {
      // Handle sign-in errors
      print("Sign in with email error: $e");
    }
  }
}

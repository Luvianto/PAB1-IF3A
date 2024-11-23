import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String _errorText = '';
  bool _isSignedIn = false;
  final bool _obscurePassword = true;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void signIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String savedUsername = prefs.getString('username') ?? '';
    final String savedPassword = prefs.getString('password') ?? '';
    final String enteredUsername = _usernameController.text.trim();
    final String enteredPassword = _passwordController.text.trim();

    if (enteredUsername.isEmpty || enteredPassword.isEmpty) {
      setState(() {
        _errorText = 'Nama dan Kata sandi tidak boleh kosong';
      });
    }
    // else if (savedUsername.isEmpty || savedPassword.isEmpty) {
    //   setState(() {
    //     _errorText = 'Anda belum terdaftar';
    //   });
    // }

    if (enteredUsername == savedUsername && enteredPassword == savedPassword) {
      setState(() {
        _errorText = '';
        _isSignedIn = true;
        prefs.setBool('isSignedIn', true);
      });

      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).popUntil((route) => route.isFirst);
      });

      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacementNamed(context, '/homescreen');
      });
    } else {
      setState(() {
        _errorText = 'Cek kembali nama pengguna dan kata sandi';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  // Masukkan _usernameController ke dalam InputField
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: "Nama Pengguna",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  // Masukkan _passwordController ke dalam InputField
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: "Kata Sandi",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: _obscurePassword,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: signIn,
                  child: const Text("Sign In"),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: 'Belum punya akun? ',
                    style:
                        const TextStyle(fontSize: 16, color: Colors.deepPurple),
                    children: [],
                  ),
                ),
                const SizedBox(height: 12),
                RichText(
                  text: TextSpan(
                    text: 'Daftar disini.',
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, '/signup');
                      },
                  ),
                ),
                const SizedBox(height: 20),
                RichText(text: TextSpan(text: _errorText)),
              ],
            )),
          ),
        ),
      ),
    );
  }
}

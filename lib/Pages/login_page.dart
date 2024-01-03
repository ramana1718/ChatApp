import 'package:chatapp/Components/text_fields.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Icon(
                Icons.message,
                size: 80,
                color: Colors.black,
              ),
              const Text(
                "welcome back you may have some unseen messages!!",
                style: TextStyle(fontSize: 16),
              ),
              CommonTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false),
              CommonTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true)
            ],
          ),
        ),
      )),
    );
  }
}

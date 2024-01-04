import 'package:chatapp/Components/button.dart';
import 'package:chatapp/Components/text_fields.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  void SignIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              const SizedBox(
                height: 20,
              ),
              CommonTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false),
              const SizedBox(
                height: 20,
              ),
              CommonTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true),
              const SizedBox(
                height: 20,
              ),
              CommonButton(onTap: SignIn, text: "Sign In"),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not an User ?"),
                  GestureDetector(
                    child: Text(
                      "Register Now",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: widget.onTap,
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/utils/custom_button.dart';
import 'package:flutter_application_1/utils/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final nameController = TextEditingController();
  final introController = TextEditingController();

  void _goToHome() {
    final name = nameController.text.trim();
    final intro = introController.text.trim();

    if (name.isEmpty || intro.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in both fields.')),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => HomePage(name: name, intro: intro),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 40),

                  CustomTextField(
                    controller: nameController,
                    label: 'Your Name',
                  ),
                  const SizedBox(height: 20),

                  CustomTextField(
                    controller: introController,
                    label: 'Short Introduction',
                    maxLines: 3,
                  ),

                  const SizedBox(height: 40),

                  CustomButton(
                    text: 'Continue',
                    onPressed: _goToHome,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

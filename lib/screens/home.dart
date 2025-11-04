import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/custom_text.dart';
import 'package:flutter_application_1/utils/custom_button.dart';

class HomePage extends StatelessWidget {
  final String name;

  const HomePage({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 174,
                  height: 180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 12,
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'),
                    backgroundColor: Colors.grey,
                  ),
                ),

                const SizedBox(height: 40),

                CustomText(
                  text: 'Hi $name',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 24),

                CustomText(
                  text: "Flutter Developer",
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 40),

                CustomButton(
                  text: 'Back',
                  onPressed: () => Navigator.pop(context),
                  width: size.width * 0.7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

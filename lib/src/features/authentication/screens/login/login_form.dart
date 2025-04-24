import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_string.dart';
import '../../controller/login_controller.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            TextFormField(
              controller: controller.emailController,
              decoration: InputDecoration(
                hintText: pEmail,
                prefixIcon: Icon(Icons.person_outline_sharp),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: controller.passController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: pPass,
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: controller.loginUser,
              style: ElevatedButton.styleFrom(
                side: BorderSide(),
                shape: const RoundedRectangleBorder(),
                foregroundColor: tWhiteColor,
                backgroundColor: tSecondaryColor,
              ),
              child: Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:project_1/src/features/authentication/controller/signup_controller.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_string.dart';
import '../../controller/login_controller.dart';
class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.controller,
  });

  final SignUpController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            TextFormField(
              controller: controller.nameController,
              decoration: InputDecoration(
                hintText: pFullName,
                labelText: pFullName,
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: controller.emailController,
              decoration: InputDecoration(
                hintText: pEmail,
                labelText: pEmail,
                prefixIcon: Icon(Icons.mail_outline_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: pPhone,
                labelText: pPhone,
                prefixIcon: Icon(Icons.numbers_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: controller.passController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: pPass,
                labelText: pPass,
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.signUpUser,
              style: ElevatedButton.styleFrom(
                side: BorderSide(),
                shape: RoundedRectangleBorder(),
                foregroundColor: tWhiteColor,
                backgroundColor: tSecondaryColor,
              ),
              child: Center(
                child: Text(
                  "SIGN UP",
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
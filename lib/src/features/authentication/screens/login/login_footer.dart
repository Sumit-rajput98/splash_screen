import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routing/routes.dart';
class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        TextButton(
          onPressed: () => Get.offNamed(MyRoutes.signUpRoute),
          child: Text.rich(
            TextSpan(
              text: "Don't Have an account?",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,fontSize: 16
              ),
              children: [
                TextSpan(
                  text: " SignUp",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

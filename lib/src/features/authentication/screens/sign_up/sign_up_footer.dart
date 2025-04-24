import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../routing/routes.dart';
class SignUpFooter extends StatelessWidget {
  const SignUpFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () => Get.offNamed(MyRoutes.secondRoute),
          child: Text.rich(
            TextSpan(
              text: "Already have an account?",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,fontSize: 15
              ),
              children: [
                TextSpan(
                  text: " LOGIN",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
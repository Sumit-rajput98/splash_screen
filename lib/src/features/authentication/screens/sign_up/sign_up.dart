import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/src/features/authentication/screens/login/login_header_widget.dart';
import 'package:project_1/src/features/authentication/screens/sign_up/signUpForm.dart';
import 'package:project_1/src/features/authentication/screens/sign_up/sign_up_footer.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_string.dart';
import '../../controller/signup_controller.dart';

// your imports stay same
class SignUp extends StatelessWidget {
  final controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: tWhiteColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoginHeaderWidget(
                    image: loginImage,
                    title: loginTitle,
                    subtitle: loginSubtitle,
                  ),
                  SignupForm(controller: controller),
                  SignUpFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



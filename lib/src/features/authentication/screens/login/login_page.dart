import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_string.dart';
import '../../../../routing/routes.dart';
import '../../controller/login_controller.dart';
import 'login_footer.dart';
import 'login_form.dart';
import 'login_header_widget.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: tWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget( image: loginImage,title: loginTitle,subtitle: loginSubtitle,),
                LoginForm(controller: controller),
                LoginFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

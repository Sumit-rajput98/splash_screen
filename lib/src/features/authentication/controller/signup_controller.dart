import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/src/routing/routes.dart';
import '../services/shared_pref_service/shared_pref_helper.dart';

class SignUpController extends GetxController {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final nameController = TextEditingController();

  void signUpUser() async {
    final email = emailController.text.trim();
    final pass = passController.text;
    final savedEmail = await SharedPrefHelper.getUserEmail();
    if (email.isEmpty) {
      Get.snackbar("Error", "Email cannot be empty");
      return;
    }
    if(savedEmail==email){
      Get.snackbar("Error", "account already existed");
      return;
    }
    if(pass.isEmpty){
      Get.snackbar("Error", "Password cannot be empty");
      return;
    }
    await SharedPrefHelper.saveUserEmail(email);
    await SharedPrefHelper.saveUserPassword(pass);
    await SharedPrefHelper.setUserName(nameController.text);
    Get.snackbar("Success", "Signup Successful");
    Get.offNamed(MyRoutes.secondRoute);
    emailController.clear();
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}

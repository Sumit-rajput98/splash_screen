import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routing/routes.dart';
import '../services/shared_pref_service/shared_pref_helper.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  void loginUser() async {
    final enteredEmail = emailController.text.trim();
    final savedEmail = await SharedPrefHelper.getUserEmail();
    final isSignedUp = await SharedPrefHelper.isSignedUp() ?? false;
    final savedPassword = await SharedPrefHelper.getUserPassword();
    final enteredPassword = passController.text;

    if (!isSignedUp) {
      Get.snackbar("Error", "You need to sign up first.");
      return;
    }

    if (enteredEmail == savedEmail) {
      if(enteredPassword==savedPassword) {
        await SharedPrefHelper.saveLoginInfo(true);
        Get.snackbar("Success", "Login Successful");
        Get.offNamed(MyRoutes.dashBoard);
      }
      else{
        Get.snackbar("error", "Wrong Password");
      }
    } else {
      Get.snackbar("Error", "Invalid Email");
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:store_app/commons/Widgets/loaders/loader.dart';
import 'package:store_app/data/repo/authentication/auth_repo.dart';
import 'package:store_app/features/authentication/Screens/signUp/Widgets/verify_email.dart';
import 'package:store_app/features/model/UserRepo.dart';
import 'package:store_app/features/model/usermodel.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/helpers/network_manager.dart';
import 'package:store_app/utils/popups/full_screen_loaders.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final hidepassword = true.obs;

  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final username = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signUpKey = GlobalKey<FormState>();

  void signUP() async {
    try {
      MyFullScreenLoader.openLoadingDilog(
          'We are processing your information...', MyImages.emailVerfication);

      //check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected){
        MyFullScreenLoader.stopLoading();
        return;}

      //form validation
      if (!signUpKey.currentState!.validate()) {
        MyFullScreenLoader.stopLoading();
        return;
      }

      //privacy policy
      if (!privacyPolicy.value) {
        Myloader.warningSnackbar(
            title: "Accept Privacy Policy",
            message:
                "In order to create account , you must have to read and accept the Privacy and Policy & terms of Use.");

        return;
      }

      //auth
      //register
      final userCredential = await AuthenticationRepository.instance
          .RegisterWithEmailandPassword(
              email.text.trim(), password.text.trim());
      //save
      final newuser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstname.text.trim(),
          lastName: lastname.text.trim(),
          userName: username.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          email: email.text.trim(),
          profilpicture: '');

      final userRepository=Get.put(UserRepository());
     await userRepository.SavedUserRecord(newuser);
      MyFullScreenLoader.stopLoading();
Myloader.sucessSnackbar(title: "Congratulations",message: "Your account has been created! Verfiy email continue .");
Get.to(VerifyEmailScreen());




    } catch (e) {
      MyFullScreenLoader.stopLoading();
      Myloader.erorrSnackbar(title: 'Oh snap!', message: e.toString());
    }
  }
}

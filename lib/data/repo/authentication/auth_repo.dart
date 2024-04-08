import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:store_app/features/authentication/Screens/login/Screens/LoginScreen.dart';
import 'package:store_app/features/authentication/Screens/login/onBoarding/on_boarding_screen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  final _auth =FirebaseAuth.instance;
  final divcesStorge = GetStorage();

  void OnReady() {
    //FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    //local storage
    if(kDebugMode){
      print('----------------Storge------------------');
      print(divcesStorge.read('isFirstTime'));

    }
    divcesStorge.writeIfNull('isFirstTime', true);
    divcesStorge.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }

  ///auth functions
//Register
Future<UserCredential> RegisterWithEmailandPassword (String email,String password)async{
  try{
    return await _auth.createUserWithEmailAndPassword(email: email, password: password);
  }on FirebaseAuthException catch(e){
    throw Exception(e.message);
  } on FirebaseException catch(e){
    throw Exception(e.message);
  }on FormatException catch(e){
    throw Exception(e.message);
  }on PlatformException catch(e){
    throw Exception(e.message);
  } catch(e){
    throw("Something went Wrong, please try again.");
  }

}


}

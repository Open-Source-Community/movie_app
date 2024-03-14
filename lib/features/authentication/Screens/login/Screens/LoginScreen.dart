import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/commons/Styles/space_Style.dart';
import 'package:store_app/commons/Styles/widgets/login_SignUp/DividerForm.dart';
import 'package:store_app/commons/Styles/widgets/login_SignUp/SocialButton.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/text_strings.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

import '../Widgets/HeaderLogin.dart';
import '../Widgets/formFieldLogin.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: MySpaceStyle.paddingWithAppBarHight,
            child: Column(

              children: [
                const SizedBox(
                  height: MySizes.spaceBtwItems*3,
                ),

                HeaderLogin(dark: dark),
                LoginForm(),
                DividerForm(textDivider: MyTexts.orSignInWith.capitalize!),
                const SizedBox(
                  height: MySizes.spaceBtwItems,
                ),
                SocialButton()
              ],
            )),
      ),
    );
  }
}

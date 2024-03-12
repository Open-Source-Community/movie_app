import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/commons/Styles/widgets/login_SignUp/DividerForm.dart';
import 'package:store_app/commons/Styles/widgets/login_SignUp/SocialButton.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/text_strings.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

import '../Widgets/SignUpform.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(MySizes.defaultSpace),
          child: Column(
            children: [
              Text(
                MyTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              //form
              MySignUpForm(),
              //divider
              DividerForm(textDivider: MyTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/features/authentication/Screens/login/Screens/sgin_up_screen.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: MySizes.spaceBtwSections),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefix: Icon(Iconsax.direct_right),
                      labelText: MyTexts.email),
                ),
                const SizedBox(
                  height: MySizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefix: Icon(Iconsax.password_check),
                      labelText: MyTexts.password,
                      suffixIcon: Icon(Iconsax.eye_slash)),
                ),

                const SizedBox(
                  height: MySizes.spaceBtwInputFields / 2,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //remember me
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        const Text(MyTexts.rememberMe)
                      ],
                    ),

                    //forgetpass
                    TextButton(
                        onPressed: () {},
                        child: const Text(MyTexts.forgetPassword)),
                  ],
                ),

                const SizedBox(
                  height: MySizes.spaceBtwItems,
                ),

                //signbutton

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(MyTexts.signIn),
                  ),
                )
                //create an account
                ,
                const SizedBox(
                  height: MySizes.spaceBtwItems,
                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(()=>SignUpScreen());
                    },
                    child: const Text(MyTexts.createAccount),
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
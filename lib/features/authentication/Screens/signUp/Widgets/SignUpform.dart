import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/commons/Styles/widgets/login_SignUp/DividerForm.dart';
import 'package:store_app/commons/Styles/widgets/login_SignUp/SocialButton.dart';
import 'package:store_app/features/authentication/Screens/signUp/Widgets/verify_email.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';

import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../login/Screens/LoginScreen.dart';

class MySignUpForm extends StatelessWidget {
  const MySignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: MyTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(
              width: MySizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: MyTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: MySizes.spaceBtwInputFields,
        ),
        //username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: MyTexts.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(
          height: MySizes.spaceBtwInputFields,
        ),
        //email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: MyTexts.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(
          height: MySizes.spaceBtwInputFields,
        ),
        //phone number
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: MyTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(
          height: MySizes.spaceBtwInputFields,
        ),
        //password
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            labelText: MyTexts.password,
            suffixIcon: Icon(Iconsax.eye_slash),
            prefixIcon: Icon(Iconsax.password_check),
          ),
        ),
        const SizedBox(
          height: MySizes.spaceBtwInputFields,
        ),

        //checkbox
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (val) {},
                )),
            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '${MyTexts.iAgreeTo}',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${MyTexts.privacyPolicy}',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? MyColors.white : MyColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? MyColors.white : MyColors.primary)),
              TextSpan(
                  text: '${MyTexts.and}',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${MyTexts.termsOfUse}',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? MyColors.white : MyColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? MyColors.white : MyColors.primary)),
            ]))
          ],
        ),

        const SizedBox(
          height: MySizes.spaceBtwSections,
        ),
        //signup button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(MyTexts.createAccount)),
        ),
        const SizedBox(
          height: MySizes.spaceBtwSections,
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app/features/authentication/controllers/SignUp_Controller.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/validators/validation.dart';

import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class MySignUpForm extends StatelessWidget {
  const MySignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final dark = MyHelperFunctions.isDarkMode(context);
    return Form(
        key: controller.signUpKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.firstname,
                    validator: (value) =>
                        MyValidator.vaildateEmptyText("First name", value),
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
                    validator: (value) =>
                        MyValidator.vaildateEmptyText("Last name", value),
                    controller: controller.lastname,
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
              validator: (value) =>
                  MyValidator.vaildateEmptyText("Username", value),
              controller: controller.username,
              expands: false,
              decoration: InputDecoration(
                labelText: MyTexts.username,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
            const SizedBox(
              height: MySizes.spaceBtwInputFields,
            ),
            //email
            TextFormField(
              validator: (value) => MyValidator.validateEmail(value),
              controller: controller.email,
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
              validator: (value) => MyValidator.validatePhoneNumber(value),
              controller: controller.phoneNumber,

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
            Obx(
                  ()=> TextFormField(
                validator: (value) => MyValidator.validatePassword(value),
                controller: controller.password,
                obscureText: controller.hidepassword.value,
                expands: false,
                decoration:  InputDecoration(
                  labelText: MyTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: IconButton(onPressed: () => controller.hidepassword.value =! controller.hidepassword.value , icon: Icon(controller.hidepassword.value?Iconsax.eye_slash:Iconsax.eye)),

                ),
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
                    child: Obx(
                        ()=> Checkbox(

                        value: controller.privacyPolicy.value,
                        onChanged: (val)=>controller.privacyPolicy.value=!controller.privacyPolicy.value,
                      ),
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
                  onPressed: () => controller.signUP(),
                  child: const Text(MyTexts.createAccount)),
            ),
            const SizedBox(
              height: MySizes.spaceBtwSections,
            ),
          ],
        ));
  }
}

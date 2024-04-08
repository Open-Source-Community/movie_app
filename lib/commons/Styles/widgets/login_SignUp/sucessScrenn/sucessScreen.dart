import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/commons/Styles/space_Style.dart';
import 'package:store_app/features/authentication/Screens/login/Screens/LoginScreen.dart';
import 'package:store_app/utils/constants/text_strings.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onpressed});

  final String image ,title,subtitle;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: MySpaceStyle.paddingWithAppBarHight*2
        ,
          child: Column(
            children: [
              //image
<<<<<<< HEAD
              Image(image:  AssetImage(image),width: MyHelperFunctions.screenWidth()*0.6,),
=======
              Image(image:  AssetImage(image),width: MyHelperFunctions.screenWidth()*0.6,height:MyHelperFunctions.screenHeight()*0.3),
>>>>>>> 214d749 (firebase_signUp)
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              //title &sub
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              Text("mofsifjsofsf.com",style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              Text(subtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              //button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: onpressed,child:  Text(MyTexts.Continue)),
              ),

            ],
          ),

        ),

      ),
    );
  }
}

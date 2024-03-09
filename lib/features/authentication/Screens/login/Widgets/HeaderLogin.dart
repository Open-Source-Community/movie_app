
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/utils/constants/image_strings.dart';
import 'package:store_app/utils/constants/sizes.dart';
import 'package:store_app/utils/constants/text_strings.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 120,
            image: AssetImage(dark
                ? MyImages.lightAppLogo
                : MyImages.darkAppLogo)),

        Text(
          MyTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: MySizes.sm),

        Text(
          MyTexts.loginSubTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),

        //form
      ],
    );
  }}
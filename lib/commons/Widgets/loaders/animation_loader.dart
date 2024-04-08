import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/constants/sizes.dart';

class MyAnimationLoaderWidget extends StatelessWidget {
  const MyAnimationLoaderWidget(
      {super.key,
      required this.text,
      required this.animation,
      this.actiontext,
      this.showaction = false,
      this.onActiononPressed});

  final String text;
  final String animation;
  final String? actiontext;
  final bool showaction;
  final VoidCallback? onActiononPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery.of(context).size.width * 0.8),
          SizedBox(
            height: MySizes.defaultSpace,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MySizes.defaultSpace,
          ),
          showaction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: onActiononPressed,
                    child: Text(actiontext!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: MyColors.light)),
                  ))
              : SizedBox(),
        ],
      ),
    );
  }
}

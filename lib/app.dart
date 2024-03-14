import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/bindings/binding.dart';
import 'package:store_app/features/authentication/Screens/login/onBoarding/on_boarding_screen.dart';

import 'utils/constants/text_strings.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: MyTexts.appName,
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        initialBinding: GeneralBindings(),
        // initialBinding: GeneralBindings(),
        home: const OnBoardingScreen());
  }
}

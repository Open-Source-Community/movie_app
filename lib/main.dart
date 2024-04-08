import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:store_app/app.dart';
import 'package:store_app/data/repo/authentication/auth_repo.dart';
import 'package:store_app/firebase_options.dart';

Future<void> main() async {
  //binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
//getx local storage
  await GetStorage.init();

  //splashscreen
  FlutterNativeSplash.preserve(widgetsBinding:widgetsBinding );
//init firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  runApp(const App());
}

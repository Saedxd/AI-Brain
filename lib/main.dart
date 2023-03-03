import 'package:chatgpt/src/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 MobileAds.instance.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
///keytool -genkey -v -keystore upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
//// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
//// flutter pub get && flutter pub run build_runner watch
//// flutter logs
//// flutter build apk --split-per-abi
//// flutter build appbundle
//flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi --obfuscate --split-debug-info=Bubbles\build\app\outputs\flutter-apk


//todo : make loading finish once bubbles are successfuly settled correctly


//…or create a new repository on the command line
//echo "# Bubbles" >> README.md
//git init
//git add README.md
//git commit -m "first commit"
//git branch -M sub_sub
//https://github.com/Saedxd/Bubbles/tree/sub_main
//git remote add origin https://github.com/Optikkaltech-io/mentorshipAppFlutter
//git push -u origin main
//…or push an existing repository from the command line


//git remote add origin https://github.com/Saedxd/-.git
//git branch -M main
//git push -u origin main



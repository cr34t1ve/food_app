import 'package:flutter/material.dart';
import 'package:food_app/screens/number/number.dart';
import 'package:food_app/screens/onboarding/onboarding.dart';
import 'package:food_app/screens/sign%20in/sign_in.dart';
import 'package:food_app/screens/splash/splash.dart';
import 'package:food_app/screens/verification/verification.dart';
import 'package:food_app/utils/size_config.dart';

void main() {
  runApp(MediaQ());
}

class MediaQ extends StatelessWidget {
  const MediaQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Gilroy',
          appBarTheme: AppBarTheme(
              brightness: Brightness.light,
              backgroundColor: Colors.white,
              elevation: 0.0)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/verification',
      routes: {
        '/': (context) => Splash(),
        '/onboarding': (context) => Onboarding(),
        '/signin': (context) => SignIn(),
        '/number': (context) => Number(),
        '/verification': (context) => Verification(),
      },
    );
  }
}

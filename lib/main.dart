import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/screens/home/home.dart';
import 'package:food_app/screens/log%20in/login.dart';
import 'package:food_app/screens/number/number.dart';
import 'package:food_app/screens/onboarding/onboarding.dart';
import 'package:food_app/screens/select%20location/select_location.dart';
import 'package:food_app/screens/sign%20in/sign_in.dart';
import 'package:food_app/screens/sign%20up/signup.dart';
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
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: Colors.white,
              elevation: 0.0),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Colors.white,
                  backgroundColor: Color(0xFF53B175),
                  textStyle: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      fontWeight: FontWeight.w400))),
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontSize: getProportionateScreenWidth(26.0),
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF181725)),
              headline3: TextStyle(
                  fontSize: getProportionateScreenWidth(18.0),
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFF9FF)),
              headline4: TextStyle(
                  fontSize: getProportionateScreenWidth(16.0),
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF7C7C7C)),
              bodyText1: TextStyle(
                  fontSize: getProportionateScreenWidth(16.0),
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF7C7C7C)),
              subtitle1: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF181725)))),
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/': (context) => Splash(),
        '/onboarding': (context) => Onboarding(),
        '/signin': (context) => SignIn(),
        '/number': (context) => Number(),
        '/verification': (context) => Verification(),
        '/selectlocation': (context) => SelectLocation(),
        '/login': (context) => Login(),
        '/signup': (context) => SignUp(),
        '/home': (context) => Home()
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/components/button.dart';
import 'package:food_app/utils/size_config.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(77.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/Groupcarrot.svg',
                    width: 48.0,
                    height: 56.0,
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(100.0),
              ),
              Row(
                children: [
                  Text(
                    'Log In',
                    style: Theme.of(context).textTheme.headline1,
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(15.0),
              ),
              Row(
                children: [
                  Text(
                    'Enter your email and password',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(40.0),
              ),
              Row(
                children: [
                  Text(
                    'Email',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'imshuvo97@gmail.com',
                    hintStyle: Theme.of(context).textTheme.bodyText1),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30.0),
              ),
              Row(
                children: [
                  Text(
                    'Email',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
              TextField(
                obscureText: isVisible,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: '. . . . . . . .',
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      color: Color(0xFF7C7C7C),
                      icon: Icon(isVisible
                          ? Icons.visibility_off_outlined
                          : Icons.remove_red_eye_outlined),
                    )),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(30.0),
              ),
              DefaultButton(
                text: 'Log In',
                press: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              SizedBox(
                height: getProportionateScreenHeight(25.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xFF181725)),
                      children: <TextSpan>[
                        TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xFF53B175)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/components/button.dart';
import 'package:food_app/utils/size_config.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    // bool _emailIsValid = RegExp(
    //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    //     .hasMatch(_emailController.text);
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
                    'Sign Up',
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
                    'Enter your credentials to continue',
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
                    'Username',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
              TextField(
                keyboardType: TextInputType.text,
                controller: _usernameController,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'cr34t1ve',
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
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'mrsofua@gmail.com',
                  hintStyle: Theme.of(context).textTheme.bodyText1,
                  // suffixIcon: Icon(
                  //   _emailIsValid ? Icons.check : null,
                  //   color: Color(0xFF53B175),
                  // )
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30.0),
              ),
              Row(
                children: [
                  Text(
                    'Password',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
              TextField(
                obscureText: _isVisible,
                controller: _passwordController,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: '. . . . . . . .',
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      },
                      color: Color(0xFF7C7C7C),
                      icon: Icon(_isVisible
                          ? Icons.visibility_off_outlined
                          : Icons.remove_red_eye_outlined),
                    )),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20.0),
              ),
              Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFF181725)),
                        children: <TextSpan>[
                          TextSpan(text: "By continuing you agree to our "),
                          TextSpan(
                            text: 'Terms of Service ',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF53B175)),
                          ),
                          TextSpan(text: "and "),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF53B175)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(30.0),
              ),
              DefaultButton(
                text: 'Sign Up',
                press: () {
                  Navigator.pushNamed(context, '/home');
                  // print(_emailController.text);
                  // print(_emailIsValid);
                },
              ),
              SizedBox(
                height: getProportionateScreenHeight(25.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: RichText(
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
                          TextSpan(text: "Already have an account? "),
                          TextSpan(
                            text: 'Log In',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color(0xFF53B175)),
                          )
                        ],
                      ),
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

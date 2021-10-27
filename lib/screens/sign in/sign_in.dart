import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/utils/size_config.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Mask Groupsigninbg.png'),
                alignment: Alignment.topCenter)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(380.63),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Get your groceries\nwith nectar',
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 31.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Row(
                    children: [
                      Image.asset(
                        'assets/images/Rectangle 11flag.png',
                        height: 23.7,
                        width: 33.97,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '+880',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18.0),
                      )
                    ],
                  )),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Or connect with social media',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF828282)),
                    )
                  ],
                ),
                SizedBox(
                  height: 37.8,
                ),
                Container(
                  decoration: BoxDecoration(),
                  width: double.infinity,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                      height: getProportionateScreenHeight(67.0),
                      color: Color(0xFF5383EC),
                      onPressed: () {
                        Navigator.pushNamed(context, '/signin');
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: getProportionateScreenWidth(35.91),
                          ),
                          SvgPicture.asset(
                              'assets/images/Group 6795google.svg'),
                          SizedBox(
                            width: getProportionateScreenWidth(40.22),
                          ),
                          Text(
                            'Continue with Google',
                            style: TextStyle(
                                color: Color(0xFFFFF9FF),
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(),
                  width: double.infinity,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                      height: getProportionateScreenHeight(67.0),
                      color: Color(0xFF4A66AC),
                      onPressed: () {
                        Navigator.pushNamed(context, '/signin');
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: getProportionateScreenWidth(35.91),
                          ),
                          SvgPicture.asset('assets/images/Vectorfacebook.svg'),
                          SizedBox(
                            width: getProportionateScreenWidth(40.61),
                          ),
                          Text(
                            'Continue with Facebook',
                            style: TextStyle(
                                color: Color(0xFFFFF9FF),
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

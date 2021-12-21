import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/components/button.dart';
import 'package:food_app/utils/size_config.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/8140 1onboarding.png',
                ),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset('assets/images/Groupcarrot.svg'),
              SizedBox(
                height: getProportionateScreenHeight(35.66),
              ),
              Text(
                'Welcome\nto our store',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(48.0),
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: getProportionateScreenHeight(19),
              ),
              Text(
                'Get your groceries in as fast as one hour',
                style: TextStyle(
                    fontSize: 16.0, color: Color(0xFFFCFCFC).withOpacity(0.7)),
              ),
              SizedBox(
                height: getProportionateScreenHeight(40.88),
              ),
              DefaultButton(),
              SizedBox(
                height: 90.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}


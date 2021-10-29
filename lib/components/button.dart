import 'package:flutter/material.dart';
import 'package:food_app/utils/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
          height: getProportionateScreenHeight(67.0),
          color: Color(0xFF53B175),
          onPressed: () {
            Navigator.pushNamed(context, '/signin');
          },
          child: Text(
            'Get Started',
            style: TextStyle(
                color: Color(0xFFFFF9FF),
                fontSize: 18.0,
                fontWeight: FontWeight.w600),
          )),
    );
  }
}

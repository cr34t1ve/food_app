import 'package:flutter/material.dart';
import 'package:food_app/utils/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: getProportionateScreenHeight(67.0),
        width: double.infinity,
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text('Submit')));
  }
}

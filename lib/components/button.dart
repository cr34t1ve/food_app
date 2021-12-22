import 'package:flutter/material.dart';
import 'package:food_app/utils/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, this.press, this.text}) : super(key: key);
  final Function? press;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: getProportionateScreenHeight(67.0),
        width: double.infinity,
        child: TextButton(
            onPressed: press as void Function()?,
            child: Text(
              text!,
              style: Theme.of(context).textTheme.headline3,
            )));
  }
}

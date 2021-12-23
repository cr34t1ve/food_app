import 'package:flutter/material.dart';
import 'package:food_app/utils/size_config.dart';

class GroceriesCard extends StatelessWidget {
  const GroceriesCard({
    Key? key,
    this.color,
    this.image,
    this.title,
  }) : super(key: key);
  final String? title;
  final String? image;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(238.0),
      height: getProportionateScreenHeight(105),
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(17.0),
          horizontal: getProportionateScreenWidth(17.0)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: color!),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(image!),
          SizedBox(
            width: getProportionateScreenWidth(15.0),
          ),
          Text(
            title!,
            style: Theme.of(context).textTheme.headline6,
          )
        ],
      ),
    );
  }
}

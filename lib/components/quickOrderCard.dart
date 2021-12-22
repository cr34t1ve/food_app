import 'package:flutter/material.dart';
import 'package:food_app/utils/size_config.dart';

class QuickOrderCard extends StatefulWidget {
  const QuickOrderCard(
      {Key? key,
      this.image,
      this.backgroundColor,
      this.price,
      this.stateSetter,
      this.vehicle})
      : super(key: key);
  final String? image;
  final String? vehicle;
  final double? price;
  final Color? backgroundColor;
  final VoidCallback? stateSetter;

  @override
  _QuickOrderCardState createState() => _QuickOrderCardState();
}

class _QuickOrderCardState extends State<QuickOrderCard> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenHeight(15.0),
          horizontal: getProportionateScreenWidth(15.0)),
      width: getProportionateScreenWidth(174.0),
      height: getProportionateScreenHeight(250.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE2E2E2), width: 1.0),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/banana.png',
                width: getProportionateScreenWidth(100.0),
                height: getProportionateScreenHeight(80.0),
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(25.0),
          ),
          Row(
            children: [
              Text(
                'Organic Bananas',
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(5.0),
          ),
          Row(
            children: [
              Text(
                '7pcs, Price/g',
                style: Theme.of(context).textTheme.headline5,
              )
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(22.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '\$4.99',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isAdded = !isAdded;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          color: isAdded ? Colors.white : Color(0xFF53B175),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                              color: isAdded
                                  ? Colors.black.withOpacity(0.5)
                                  : Colors.white,
                              width: 0.5)),
                      child: Center(
                        child: Icon(
                          isAdded ? Icons.remove : Icons.add,
                          color: isAdded ? Colors.black : Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

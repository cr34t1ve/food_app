import 'package:flutter/material.dart';
import 'package:food_app/utils/size_config.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: getProportionateScreenWidth(67.0),
        height: getProportionateScreenHeight(67.0),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0xFF53B175)),
        child: Center(
          child: Icon(
            Icons.chevron_right,
            color: Colors.white,
            size: 45,
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            size: 35,
            color: Color(0xFF181725),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(65),
              ),
              Row(
                children: [
                  Text(
                    'Enter your mobile number',
                    style: TextStyle(
                        fontSize: getProportionateScreenHeight(26.0),
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(27),
              ),
              Row(
                children: [
                  Text(
                    'Mobile Number',
                    style: TextStyle(
                        fontSize: getProportionateScreenHeight(16.0),
                        color: Color(0xFF7C7C7C),
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
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
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/utils/size_config.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              'Resend Code',
              style: TextStyle(
                  color: Color(0xFF53B175),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
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
        ],
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
                    'Enter your 4-digit code',
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
                    'Code',
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
                    hintText: '- - - -',
                    hintStyle: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF181725),
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

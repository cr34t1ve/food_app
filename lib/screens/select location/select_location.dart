import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/utils/size_config.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(44.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: getProportionateScreenHeight(170.69),
                  width: getProportionateScreenWidth(224.69),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                          bottom: 0.0,
                          child:
                              SvgPicture.asset('assets/images/Groupmap.svg')),
                      Positioned(
                        top: 0.0,
                        child: Image.asset(
                          'assets/images/Grouppin.png',
                          height: getProportionateScreenHeight(121.02),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(40.15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Select Your Location',
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(26.0),
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Switch on your location to stay in tune with\nwhat’s happening in your area',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(16.0),
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF7C7C7C)),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(89.35),
            ),
            Row(
              children: [
                Text(
                  'Your Zone',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7C7C7C),
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

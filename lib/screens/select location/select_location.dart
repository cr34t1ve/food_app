import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/components/button.dart';
import 'package:food_app/enum/constants.dart';
import 'package:food_app/utils/size_config.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  String? _currentZoneSelectedValue;
  String? _currentAreaSelectedValue;

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
              height: getProportionateScreenHeight(14.0),
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
                  style: Theme.of(context).textTheme.headline1,
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
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(10.0),
            ),
            DropdownButton(
              style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
              isExpanded: true,
              elevation: 0,
              hint: Text(
                'Zone of residence',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFB1B1B1),
                    letterSpacing: 0),
              ),
              icon: Icon(Icons.keyboard_arrow_down_sharp),
              value: _currentZoneSelectedValue,
              onChanged: (String? newValue) {
                setState(() {
                  _currentZoneSelectedValue = newValue!;
                  // state.didChange(newValue);
                });
              },
              items: zones.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20.0),
            ),
            //
            //
            //Area drop down
            //
            //
            Row(
              children: [
                Text('Your Area', style: Theme.of(context).textTheme.bodyText1)
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(10.0),
            ),
            DropdownButton(
              style: TextStyle(
                color: Color(0xFF181725),
                fontSize: 18,
              ),
              isExpanded: true,
              elevation: 0,
              hint: Text(
                'Types of your area',
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFFB1B1B1),
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0),
              ),
              icon: Icon(Icons.keyboard_arrow_down_sharp),
              value: _currentAreaSelectedValue,
              onChanged: (String? newValue) {
                setState(() {
                  _currentAreaSelectedValue = newValue!;
                  // state.didChange(newValue);
                });
              },
              items: zoneTypes.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(
              height: getProportionateScreenHeight(40.0),
            ),
            DefaultButton(
              text: 'Submit',
              press: () {
                Navigator.pushNamed(context, '/login');
              },
            )
          ],
        ),
      ),
    );
  }
}

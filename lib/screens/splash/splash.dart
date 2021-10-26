import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF53B175),
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/Groupcarrot.svg'),
              SizedBox(
                width: 18.36,
              ),
              Column(
                children: [
                  SvgPicture.asset('assets/images/Groupnectar.svg'),
                  Text(
                    'online groceriet',
                    style: TextStyle(
                        fontSize: 18, color: Colors.white, letterSpacing: 5.5),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 110.0,
          )
        ],
      ),
    );
  }
}

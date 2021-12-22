import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
    this.icon,
    this.header,
    this.subtitle,
    this.image,
  }) : super(key: key);
  final IconData? icon;
  final String? header;
  final String? subtitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            image!,
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }
}

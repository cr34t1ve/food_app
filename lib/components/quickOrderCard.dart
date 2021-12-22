import 'package:flutter/material.dart';

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
      width: 150.0,
      height: 218.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130.0,
            width: 150.0,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0.0,
                  child: Container(
                      width: 150.0,
                      height: 106.0,
                      decoration: BoxDecoration(
                          color: widget.backgroundColor,
                          borderRadius: BorderRadius.circular(20.0))),
                ),
                Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Image.asset(
                    widget.image!,
                    height: 100.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.vehicle!,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                  RichText(
                    text: TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.1,
                          fontFamily: 'Gilroy',
                          fontSize: 22,
                          color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(text: '\u00A2${widget.price}'),
                        TextSpan(
                            text: '/ml',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Color(0xFF0C025C),
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ),
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
                      color: isAdded ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: isAdded
                              ? Colors.white
                              : Colors.black.withOpacity(0.5),
                          width: 0.5)),
                  child: Center(
                    child: Icon(
                      isAdded ? Icons.remove : Icons.add,
                      color: isAdded ? Colors.white : Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

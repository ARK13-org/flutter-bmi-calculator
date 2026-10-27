import 'package:flutter/material.dart';

class LeftContainer extends StatelessWidget {
  final double width;
  const new({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: width,
          height: 25,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
            ),
          ),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
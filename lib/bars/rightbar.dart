import 'package:flutter/material.dart';

class RightContainer extends StatelessWidget {
  final double width;
  const new({
    super.key,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          width: width,
          height: 25,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            ),
          ),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
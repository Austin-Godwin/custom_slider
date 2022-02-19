import 'package:flutter/material.dart';

class SliderText extends StatelessWidget {
  final String text;
  final double? leftValue;
  final double? rightValue;
  const SliderText(
      {Key? key, required this.text, this.leftValue, this.rightValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      // top: 320,
      left: leftValue,
      right: rightValue,
      // 10.0,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}
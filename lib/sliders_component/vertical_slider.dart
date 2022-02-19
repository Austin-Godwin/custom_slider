import 'package:custom_slider/sliders_component/vertical_container.dart';
import 'package:flutter/material.dart';

class VerticalSlider extends StatelessWidget {
  final double leftValue;
  const VerticalSlider({Key? key, required this.leftValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 22,
      // top: 360.0,
      left: leftValue,
      // 10.0,
      child: const VerticalContainer(),
    );
  }
}
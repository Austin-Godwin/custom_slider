import 'package:flutter/material.dart';

extension cont on BuildContext {
  /// width of device
  double get getDeviceWidth => MediaQuery.of(this).size.width;

  /// height of device
  double get getDeviceHeight => MediaQuery.of(this).size.height;

  /// this is an extention to help get device width
  /// passing the argument [subtract] reduce the width
  /// by that value.
  double deviceWidth({double? subtract}) {
    double width = MediaQuery.of(this).size.width;
    // reduce the width by the value user passed
    if (subtract != null) {
      width -= subtract;
    }
    return width;
  }

  /// this is an extention to help get device height
  /// passing the argument ``subtract`` reduce the width
  /// by that value.
  double deviceHeight({double? subtract}) {
    double height = MediaQuery.of(this).size.height;
    // reduce the width by the value user passed
    if (subtract != null) {
      height -= subtract;
    }
    return height;
  }

  /// this is an extention to help get device height
  /// in percentage
  double deviceHeightPercentage({required double percentage}) {
    double height = MediaQuery.of(this).size.height;

    // calculate the height percentage
    return height * (percentage / 100);
  }
}
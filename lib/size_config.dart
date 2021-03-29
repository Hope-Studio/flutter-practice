import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHight;
  static double defalutSize;
  // ignore: unused_field
  static Orientation _orientation;

  void init(BuildContext context) {
    //获取当前设备的信息
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHight = _mediaQueryData.size.height;
    //横竖屏
    _orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHight(double inputHight) {
  final double screenHight = SizeConfig.screenHight;
  return (inputHight / 812.0) * screenHight;
}

double getProportionateScreenWidth(double inputWidth) {
  final double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 812.0) * screenWidth;
}

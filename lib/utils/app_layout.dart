import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight(){
    return Get.height;
  }

  static getScreenWidth(){
    return Get.width;
  }

  static getHeight(double pixels) {
    //844/200 = 4.22
    //700/200 = 3.5 이런 식으로 기계에 따라 배율을 다르게한다.
    double x = getScreenHeight()/pixels;
    return getScreenHeight()/x;
  }

  static getWidth(double pixels) {
    //844/200 = 4.22
    //700/200 = 3.5 이런 식으로 기계에 따라 배율을 다르게한다.
    double x = getScreenWidth()/pixels;
    return getScreenWidth()/x;
  }

}
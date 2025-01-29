import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1200;
  static const double tablet = 800;
//!   MediaQuere الشاشة بحيث اسهل من استخدام ال width , height يحتوو عل
// ! nullable حتى لا تكون  late و  class لاني اريد الوصول اليها من ال static

//! لما نصغر و نكبر الشاشة  realtime عليها مشاكل بالويب بال static late double width, height;
  static late double width, height;

  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
        width = MediaQuery.sizeOf(context).width;

  }
}

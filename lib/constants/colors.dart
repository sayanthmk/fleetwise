import 'package:flutter/material.dart';

class FleetWiseColors {
  static const scaffoldBackground = Color.fromRGBO(238, 238, 238, 1);
  static const textcolor = Color.fromRGBO(18, 46, 70, 1);
  static const shadeTextcolor = Color.fromRGBO(89, 109, 126, 1);
  static const homeBlue = Color.fromRGBO(63, 91, 217, 1);
  static const profitBrown = Color.fromRGBO(148, 113, 107, 1);
  static const profitGreen = Color.fromRGBO(0, 143, 117, 1);
  static const lossRed = Color.fromRGBO(214, 77, 77, 1);
  static const fillwhite = Color.fromRGBO(255, 255, 255, 1);
  static const homegradiantblue = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(63, 91, 217, 1),
      Color.fromRGBO(16, 16, 16, 1),
    ],
  );
  static const managementGradiantBrown = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(148, 113, 107, 1),
      Color.fromRGBO(16, 16, 16, 1),
    ],
  );
}

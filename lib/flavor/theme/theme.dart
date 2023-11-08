import 'package:flutter/material.dart';

abstract class ThemeApp {
  Color get primaryColor;
  Color get secondaryColor;
  Color get backgroundColor;
}

class IdeagriTheme implements ThemeApp {
  @override
  Color get backgroundColor => Colors.white;

  @override
  Color get primaryColor => const Color(0XFF168B8E);

  @override
  Color get secondaryColor => const Color(0XFFDB2D2D);
}

class PiracanjubaTheme implements ThemeApp {
  @override
  Color get backgroundColor => Colors.white;

  @override
  Color get primaryColor => const Color(0XFFdb2d2d);

  @override
  Color get secondaryColor => const Color(0XFF0E54B7);
}

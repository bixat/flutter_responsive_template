import 'package:flutter/material.dart';
import 'package:responsive_template/responsiveness/breakpoints.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  Size get sz => MediaQuery.of(this).size;
  bool get isSmall => sz.width <= Breakpoints.sm;
  bool get isMedium => sz.width > Breakpoints.sm && sz.width <= Breakpoints.md;
  bool get isLarge => sz.width > Breakpoints.md && sz.width <= Breakpoints.lg;
  bool get isXLarge => sz.width > Breakpoints.lg;
  bool get fromMed => isMedium || isLarge || isXLarge;
  bool get fromLg => isLarge || isXLarge;
}

extension Spacers on double {
  SizedBox get h => SizedBox(height: this);
  SizedBox get w => SizedBox(width: this);
}

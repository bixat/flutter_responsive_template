import 'package:flutter/material.dart';
import 'package:responsive_template/responsiveness/breakpoints.dart';
import 'package:responsive_template/responsiveness/home/home_config.dart';
import 'package:responsive_template/responsiveness/home/widgets_config/body_config.dart';
import 'package:responsive_template/responsiveness/ui_configurations.dart';

import 'home/widgets_config/item_card_config.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  Size get sz => MediaQuery.of(this).size;
  double get width => sz.width;
  bool get isSmall => width <= Breakpoints.sm;
  bool get isMedium => !isSmall && width <= Breakpoints.md;
  bool get isLarge => !isMedium && width <= Breakpoints.lg;
  bool get isXLarge => !isLarge && width <= Breakpoints.xl;
  bool get isXXLarge => !isXLarge && width <= Breakpoints.xxl;
  bool get fromMed => isMedium || isLarge || isXLarge;
  bool get fromLg => isLarge || isXLarge || isXXLarge;
  bool get fromXLg => isXLarge || isXXLarge;
  UiConfigurations get uiConfig => UiConfigurations(this);
  BodyConfig get bodyConfig => UiConfigurations(this).body;
  ItemCardConfig get cardConfig => UiConfigurations(this).card;
  HomeConfig get homeConfig => UiConfigurations(this).home;
  // TODO: Add more configurations
}

extension Spacers on double {
  SizedBox get h => SizedBox(height: this);
  SizedBox get w => SizedBox(width: this);
}

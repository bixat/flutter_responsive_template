import 'package:flutter/material.dart';
import 'package:responsive_template/responsiveness/extensions.dart';
import 'package:responsive_template/responsiveness/home/home_config.dart';

class UiConfigurations {
  final BuildContext context;
  UiConfigurations(this.context) {
    if (context.isSmall) {
      home = HomeConfig(color: Colors.yellow, screen: "Small screen");
    } else if (context.isMedium) {
      home = HomeConfig(color: Colors.green, screen: "Medium screen");
    } else if (context.isLarge) {
      home = HomeConfig(color: Colors.orange, screen: "Large screen");
    } else {
      home = HomeConfig(color: Colors.red, screen: "Extra Large screen");
    }
  }

  late HomeConfig home;
  // TODO : Add more item config if needed
}

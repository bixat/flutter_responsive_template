import 'package:flutter/material.dart';
import 'package:responsive_template/constants/styles.dart';
import 'package:responsive_template/responsiveness/extensions.dart';
import 'package:responsive_template/responsiveness/home/home_config.dart';
import 'package:responsive_template/responsiveness/home/widgets_config/body_config.dart';
import 'package:responsive_template/responsiveness/home/widgets_config/item_card_config.dart';

class UiConfigurations {
  final BuildContext context;
  late HomeConfig home;
  late BodyConfig body;
  late ItemCardConfig card;
  // TODO : Add more item config if needed

  UiConfigurations(this.context) {
    if (context.isSmall) {
      _small();
    } else if (context.isMedium) {
      _medium();
    } else if (context.isLarge) {
      _large();
    } else {
      _extraLarge();
    }
  }

  void _extraLarge() {
    home = HomeConfig(color: Colors.orange, screen: "Extra Large screen");
    body = BodyConfig(crossAxisCount: 4);
    card = ItemCardConfig(color: Colors.orange);
    FontSizes.scale = 1.6;
  }

  void _large() {
    home = HomeConfig(color: Colors.orange, screen: "Large screen");
    body = BodyConfig(crossAxisCount: 3);
    card = ItemCardConfig(color: Colors.orange);
    FontSizes.scale = 1.4;
  }

  void _medium() {
    home = HomeConfig(color: Colors.green, screen: "Medium screen");
    body = BodyConfig(crossAxisCount: 2);
    card = ItemCardConfig(color: Colors.green);
    FontSizes.scale = 1.2;
  }

  void _small() {
    home = HomeConfig(color: Colors.yellow, screen: "Small screen");
    body = BodyConfig(crossAxisCount: 1, childAspectRatio: 3.5);
    card = ItemCardConfig(
        color: Colors.yellow, direction: Axis.horizontal, imageFlex: 2);
    FontSizes.scale = 1.0;
  }
}

import 'package:flutter/material.dart';

class ItemCardConfig {
  final Axis direction;

  final int imageFlex;

  final Color color;

  ItemCardConfig(
      {this.direction = Axis.vertical,
      this.imageFlex = 8,
      required this.color});
}

import 'package:flutter/material.dart';
import 'package:responsive_template/responsiveness/configurations.dart';
import 'package:responsive_template/responsiveness/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final config = UiConfigurations(context);
    return Scaffold(
        backgroundColor: config.home.color,
        body: Center(
          child: Text(
            config.home.screen,
            style: context.theme.textTheme.displayMedium,
          ),
        ));
  }
}

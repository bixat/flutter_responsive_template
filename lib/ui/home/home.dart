import 'package:flutter/material.dart';
import 'package:responsive_template/constants/styles.dart';
import 'package:responsive_template/responsiveness/ui_configurations.dart';
import 'package:responsive_template/responsiveness/extensions.dart';
import 'package:responsive_template/ui/home/widgets/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final config = UiConfigurations(context).home;
    return Scaffold(
        backgroundColor: config.color,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  config.screen,
                  style: context.theme.textTheme.displayMedium!
                      .copyWith(fontSize: FontSizes.s48),
                ),
              ),
              const Expanded(child: Body())
            ],
          ),
        ));
  }
}

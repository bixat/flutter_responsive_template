import 'package:flutter/material.dart';
import 'package:responsive_template/constants/styles.dart';
import 'package:responsive_template/responsiveness/configurations.dart';
import 'package:responsive_template/ui/home/widgets/item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final config = UiConfigurations(context).body;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Insets.med),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: config.crossAxisCount,
            childAspectRatio: config.childAspectRatio,
            mainAxisSpacing: Insets.med,
            crossAxisSpacing: Insets.med),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ItemCard();
        },
      ),
    );
  }
}

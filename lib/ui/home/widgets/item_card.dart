import 'package:flutter/material.dart';
import 'package:responsive_template/constants/styles.dart';
import 'package:responsive_template/responsiveness/configurations.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final config = UiConfigurations(context).card;
    return Card(
      child: Flex(
        direction: config.direction,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: ListTile(
              title: Text(
                "Title",
                style: TextStyle(fontSize: FontSizes.s16),
              ),
              subtitle: Text(
                "Sub-Title",
                style: TextStyle(fontSize: FontSizes.s14),
              ),
            ),
          ),
          Expanded(
              flex: config.imageFlex,
              child: Card(
                color: config.color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                child: Container(),
              )),
        ],
      ),
    );
  }
}

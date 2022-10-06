import 'package:animation/screens/home/data/drawe.items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildDraweItems(context),
        ],
      ),
    );
  }

  Widget buildDraweItems(BuildContext context) => Column(
        children: DraweItems.all
            .map((item) => ListTile(
                  leading: item.icon,
                  title: Text(
                    item.title,
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {},
                ))
            .toList(),
      );
}

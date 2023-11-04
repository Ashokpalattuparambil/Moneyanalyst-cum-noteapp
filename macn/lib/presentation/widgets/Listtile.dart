import 'dart:ui';

import "package:flutter/material.dart";
import 'package:macn/constants/colors.dart';

class ListTileWidget extends StatelessWidget {
  final String title;
  final String trailing;
  final Color color;
  const ListTileWidget(
      {Key? key,
      required this.title,
      required this.trailing,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
        style: ListTileStyle.list,
        tileColor: ConstantColors.cardColor,
        textColor: color,
        title: Text(
          title,
          style: TextStyle(fontSize: 18, color: ConstantColors.white),
        ),
        trailing: Text(trailing),
        subtitle: Text(
          "20/9/2022",
          style: TextStyle(fontSize: 12, color: ConstantColors.deepviolet),
        ),
      ),
    );
  }
}

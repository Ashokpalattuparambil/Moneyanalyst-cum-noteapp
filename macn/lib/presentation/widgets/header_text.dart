import 'package:flutter/material.dart';
import 'package:macn/constants/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderText extends StatelessWidget {
  final String headerText;
  final double fontSize;
  final Icon icon;
  const HeaderText(
      {Key? key,
      required this.headerText,
      required this.fontSize,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        GradientText(
          headerText,
          colors: [
            ConstantColors.deepBlue,
            ConstantColors.lightBlue,
            ConstantColors.green
          ],
          style: TextStyle(fontSize: fontSize),
        ),
      ],
    );
  }
}

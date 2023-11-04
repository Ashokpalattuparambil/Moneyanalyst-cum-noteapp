import "package:flutter/material.dart";
import 'package:macn/constants/colors.dart';

class SettingsOptions extends StatelessWidget {
  final Icon icon;
  final String text;
  const SettingsOptions({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 16, color: ConstantColors.white),
          ),
        ],
      ),
    );
  }
}

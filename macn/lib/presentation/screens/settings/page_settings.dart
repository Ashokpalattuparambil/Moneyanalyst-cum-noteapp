import "package:flutter/material.dart";
import 'package:macn/constants/colors.dart';
import 'package:macn/presentation/widgets/settings_options.dart';

class PageSettings extends StatelessWidget {
  const PageSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SettingsOptions(
              icon: Icon(
                Icons.notifications,
                color: ConstantColors.white,
              ),
              text: "Turn on notification of budgets"),
          SettingsOptions(
              icon: Icon(
                Icons.clear_all_rounded,
                color: ConstantColors.white,
              ),
              text: "Reset all data"),
          SettingsOptions(
              icon: Icon(
                Icons.share,
                color: ConstantColors.white,
              ),
              text: "Share"),
          SettingsOptions(
              icon: Icon(
                Icons.reviews,
                color: ConstantColors.white,
              ),
              text: "Write a review"),
          SettingsOptions(
              icon: Icon(
                Icons.privacy_tip,
                color: ConstantColors.white,
              ),
              text: "Privacy and Policy"),
          SettingsOptions(
              icon: Icon(
                Icons.info,
                color: ConstantColors.white,
              ),
              text: "About us"),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Version 1.0",
                  style:
                      TextStyle(fontSize: 16, color: ConstantColors.deepviolet),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

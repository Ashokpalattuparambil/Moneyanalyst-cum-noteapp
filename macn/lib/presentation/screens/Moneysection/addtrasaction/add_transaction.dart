import "package:flutter/material.dart";
import 'package:macn/constants/colors.dart';
import 'package:macn/presentation/widgets/header_text.dart';

class AddTransaction extends StatelessWidget {
  const AddTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                HeaderText(
                  headerText: "Add Transaction",
                  fontSize: 30,
                  icon: Icon(
                    Icons.add,
                    color: ConstantColors.deepBlue,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

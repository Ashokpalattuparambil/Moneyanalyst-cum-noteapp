import "package:flutter/material.dart";
import 'package:macn/constants/colors.dart';
import 'package:macn/presentation/widgets/Listtile.dart';

class ExpenseTab extends StatelessWidget {
  const ExpenseTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index) {
          return ListTileWidget(
            title: "Rent",
            trailing: "10,000",
            color: ConstantColors.orange,
          );
        }),
        separatorBuilder: ((context, index) => const SizedBox(
              height: 10,
            )),
        itemCount: 20);
  }
}

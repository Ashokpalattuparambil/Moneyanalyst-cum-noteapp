import "package:flutter/material.dart";
import 'package:macn/constants/colors.dart';
import 'package:macn/presentation/widgets/Listtile.dart';

class IncomeTab extends StatelessWidget {
  const IncomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index) {
          return ListTileWidget(
            title: "Salary",
            trailing: "75,000",
            color: ConstantColors.green,
          );
        }),
        separatorBuilder: ((context, index) => const SizedBox(
              height: 10,
            )),
        itemCount: 20);
  }
}

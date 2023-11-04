import 'package:flutter/material.dart';
import 'package:macn/constants/colors.dart';

class StatsCircleWidget extends StatelessWidget {
  const StatsCircleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: ConstantColors.cyan),
      child: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: ConstantColors.deepBlue,
                spreadRadius: 2,
                blurRadius: 0,
                offset: const Offset(-1.5, -1.5),
              ),
              BoxShadow(
                color: ConstantColors.deepviolet,
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(1.5, 1.5),
              )
            ],
          ),
        ),
      ),
    );
  }
}

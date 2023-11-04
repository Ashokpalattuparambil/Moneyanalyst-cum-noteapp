import "package:flutter/material.dart";
import 'package:macn/presentation/widgets/stats_circle.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [StatsCircleWidget()],
    );
  }
}

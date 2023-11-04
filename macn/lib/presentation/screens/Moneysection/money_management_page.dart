import "package:flutter/material.dart";
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:macn/constants/colors.dart';
import 'package:macn/presentation/screens/Moneysection/Expensetab/expense_tab.dart';
import 'package:macn/presentation/screens/Moneysection/incometab/income_tab.dart';
import 'package:macn/presentation/screens/Moneysection/statstab/stats_tab.dart';

class MoneyManagementSection extends StatefulWidget {
  const MoneyManagementSection({Key? key}) : super(key: key);

  @override
  State<MoneyManagementSection> createState() => _MoneyManagementSectionState();
}

class _MoneyManagementSectionState extends State<MoneyManagementSection>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  @override
  void initState() {
    super.initState();
    // initialize controller
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // dispose controller
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.primaryColor,
      appBar: TabBar(
        isScrollable: true,
        padding: const EdgeInsets.all(6),
        controller: _tabController,
        unselectedLabelColor: ConstantColors.deepBlue,
        indicator: BoxDecoration(
          color: ConstantColors.cyan,
          borderRadius: BorderRadius.circular(50),
          shape: BoxShape.rectangle,
          gradient: LinearGradient(
            colors: [ConstantColors.cyan, ConstantColors.green],
          ),
        ),
        tabs: const [
          Tab(
            text: "Income",
          ),
          Tab(
            text: "Expense",
          ),
          Tab(
            icon: Icon(FeatherIcons.pieChart),
          ),
        ],
      ),
      body: TabBarView(controller: _tabController, children: const [
        IncomeTab(),
        ExpenseTab(),
        StatsTab(),
      ]),
    );
  }
}

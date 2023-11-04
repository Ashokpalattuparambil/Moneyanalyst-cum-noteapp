import "package:flutter/material.dart";
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:macn/constants/colors.dart';
import 'package:macn/presentation/screens/Moneysection/addtrasaction/add_transaction.dart';
import 'package:macn/presentation/screens/Moneysection/money_management_page.dart';
import 'package:macn/presentation/screens/home/notes/addnote_page.dart';
import 'package:macn/presentation/screens/settings/page_settings.dart';
import 'package:macn/presentation/screens/home/notes/note_list.dart';
import 'package:macn/presentation/widgets/header_text.dart';

class HomeNotes extends StatefulWidget {
  const HomeNotes({Key? key}) : super(key: key);

  @override
  State<HomeNotes> createState() => _HomeNotesState();
}

class _HomeNotesState extends State<HomeNotes> {
  int selectedIndex = 0;
  final pages = [
    const NoteList(),
    const MoneyManagementSection(),
    const PageSettings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.primaryColor,

      //appbar//
      appBar: AppBar(
        backgroundColor: ConstantColors.primaryColor,
        elevation: 0,
        title: (selectedIndex == 0)
            ? HeaderText(
                headerText: "Notes",
                fontSize: 30,
                icon: Icon(
                  Icons.note_alt,
                  color: ConstantColors.deepBlue,
                  size: 35,
                ),
              )
            : (selectedIndex == 1)
                ? HeaderText(
                    headerText: "Money section",
                    fontSize: 30,
                    icon: Icon(
                      Icons.attach_money,
                      color: ConstantColors.deepBlue,
                      size: 35,
                    ),
                  )
                : HeaderText(
                    headerText: "Settings",
                    fontSize: 30,
                    icon: Icon(
                      Icons.settings,
                      color: ConstantColors.deepBlue,
                      size: 30,
                    ),
                  ),
      ),
      body: pages[selectedIndex],

      //floatingactionbutton//
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FittedBox(
          child: selectedIndex == 0 || selectedIndex == 1
              ? FloatingActionButton.extended(
                  foregroundColor: ConstantColors.white,
                  backgroundColor: ConstantColors.deepviolet,
                  label: const Icon(FeatherIcons.plus),
                  onPressed: () {
                    if (selectedIndex == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddNote(),
                        ),
                      );
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AddTransaction(),
                        ),
                      );
                    }
                  },
                )
              : null,
        ),
      ),

      //bottomnavigationbar
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 24,
        selectedFontSize: 12,
        backgroundColor: ConstantColors.primaryColor,
        selectedItemColor: ConstantColors.deepBlue,
        unselectedItemColor: ConstantColors.cardColor,
        onTap: (newindex) {
          setState(() {
            selectedIndex = newindex;
          });
        },
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.dollarSign),
            label: "money",
          ),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.settings), label: "Settings"),
        ],
      ),
    );
  }
}

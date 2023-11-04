import 'package:flutter/material.dart';
import '../../../../constants/colors.dart';

class NoteList extends StatelessWidget {
  const NoteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 140,
              decoration: BoxDecoration(
                color: ConstantColors.cardColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Meeting",
                    style: TextStyle(fontSize: 20, color: ConstantColors.white),
                  ),
                ],
              ),
            ),
          );
        }),
        separatorBuilder: ((context, index) => const SizedBox(
              height: 20,
            )),
        itemCount: 15);
  }
}

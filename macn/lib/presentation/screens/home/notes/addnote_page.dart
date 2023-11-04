import "package:flutter/material.dart";
import 'package:macn/constants/colors.dart';

class AddNote extends StatelessWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.primaryColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(
            top: 25,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 90,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 3,
                              backgroundColor: ConstantColors.deepviolet),
                          child: const Text("save"),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  flex: 2,
                  child: TextField(
                    textAlign: TextAlign.start,
                    style: TextStyle(color: ConstantColors.white),
                    decoration: InputDecoration(
                      hintText: "Heading",
                      hintStyle:
                          TextStyle(fontSize: 28, color: ConstantColors.grey),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColors.deepviolet,
                        ),
                      ),
                    ),
                    cursorColor: ConstantColors.deepviolet,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Expanded(
                  flex: 7,
                  child: TextField(
                    textAlign: TextAlign.start,
                    style: TextStyle(color: ConstantColors.white),
                    decoration: InputDecoration(
                      hintText: "Type your note here",
                      hintStyle:
                          TextStyle(fontSize: 20, color: ConstantColors.grey),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ConstantColors.deepviolet),
                      ),
                    ),
                    cursorColor: ConstantColors.deepviolet,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'custom_txt.dart';

class Compo extends StatelessWidget {
  Compo({
    required this.textTitle,
    required this.textNum,
    required this.textButOne,
    required this.textButTow,
    required this.textButThree,
    required this.funOne,
    required this.funTow,
    required this.funThree,
  });
  String textTitle;
  String textNum;
  String textButOne;
  String textButTow;
  String textButThree;
  Function() funOne;
  Function() funTow;
  Function() funThree;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
              text: textTitle,
              size: 40,
            ),
            CustomText(
              text: textNum,
              size: 120,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(180, 60),
                ),
                onPressed: funOne,
                child: CustomText(
                  text: textButOne,
                  size: 20,
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(180, 60),
                ),
                onPressed: funTow,
                child: CustomText(
                  text: textButTow,
                  size: 20,
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(180, 60),
                ),
                onPressed: funThree,
                child: CustomText(
                  text: textButThree,
                  size: 20,
                )),
          ],
        ),
      ),
    );
  }
}

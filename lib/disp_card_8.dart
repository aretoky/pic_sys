import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

var _index = 0;

class EightCardsDisp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('8枚表示'),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: picWidth,
                  height: picHeight,
                  child: Image.asset(disp_pics[_index]),
                ),
                Container(
                  width: picWidth,
                  height: picHeight,
                  child: Image.asset(disp_pics[_index + 1]),
                ),
                Container(
                  width: picWidth,
                  height: picHeight,
                  child: Image.asset(disp_pics[_index + 2]),
                ),
                Container(
                  width: picWidth,
                  height: picHeight,
                  child: Image.asset(disp_pics[_index + 3]),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: picWidth,
                  height: picHeight,
                  child: Image.asset(disp_pics[_index + 4]),
                ),
                Container(
                  width: picWidth,
                  height: picHeight,
                  child: Image.asset(disp_pics[_index + 5]),
                ),
                Container(
                  width: picWidth,
                  height: picHeight,
                  child: Image.asset(disp_pics[_index + 6]),
                ),
                Container(
                  width: picWidth,
                  height: picHeight,
                  child: Image.asset(disp_pics[_index + 7]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

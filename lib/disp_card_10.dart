import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class TenCardsDisp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('10枚表示'),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(disp_pics[0]),
                ),
                Expanded(
                  child: Image.asset(disp_pics[1]),
                ),
                Expanded(
                  child: Image.asset(disp_pics[2]),
                ),
                Expanded(
                  child: Image.asset(disp_pics[3]),
                ),
                Expanded(
                  child: Image.asset(disp_pics[4]),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Image.asset(disp_pics[5]),
                ),
                Expanded(
                  child: Image.asset(disp_pics[6]),
                ),
                Expanded(
                  child: Image.asset(disp_pics[7]),
                ),
                Expanded(
                  child: Image.asset(disp_pics[8]),
                ),
                Expanded(
                  child: Image.asset(disp_pics[9]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

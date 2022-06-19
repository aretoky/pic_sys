import 'package:flutter/material.dart';

class FourCardsDisp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4枚表示'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'images/a_1.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'images/b_1.png',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'images/c_1.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'images/d_1.png',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

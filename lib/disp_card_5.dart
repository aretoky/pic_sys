import 'package:flutter/material.dart';

class FiveCardsDisp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5枚表示'),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset('images/a_1.png'),
            ),
            Expanded(
              child: Image.asset('images/b_1.png'),
            ),
            Expanded(
              child: Image.asset('images/c_1.png'),
            ),
            Expanded(
              child: Image.asset('images/d_1.png'),
            ),
            Expanded(
              child: Image.asset('images/e_1.png'),
            ),
          ],
        ),
      ),
    );
  }
}

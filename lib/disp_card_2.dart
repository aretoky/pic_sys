import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class TwoCardsDisp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2枚表示'),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Image.asset('images/a_1.png')),
            Expanded(child: Image.asset('images/b_1.png')),
          ],
        ),
      ),
    );
  }
}

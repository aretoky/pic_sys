import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class OneCardDisp extends StatelessWidget {
  var _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1枚表示'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Image.asset(disp_pics[_index])),
          ],
        ),
      ),
    );
  }
}

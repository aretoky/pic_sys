import 'package:flutter/material.dart';

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
            Row(
              children: [
                Expanded(
                  child: Image.asset('images/f_1.png'),
                ),
                Expanded(
                  child: Image.asset('images/g_1.png'),
                ),
                Expanded(
                  child: Image.asset('images/h_1.png'),
                ),
                Expanded(
                  child: Image.asset('images/i_1.png'),
                ),
                Expanded(
                  child: Image.asset('images/j_1.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

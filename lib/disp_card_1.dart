import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

var _index = 0;

class OneCardDisp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1枚表示'),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Image.asset(disp_pics[_index])),
              ],
            ),
          ),
          SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  iconSize: 100,
                  onPressed: _handlePressed_next,
                  color: Colors.blue,
                  icon: Icon(Icons.navigate_before),
                ),
                IconButton(
                  iconSize: 100,
                  onPressed: _handlePressed_before,
                  color: Colors.blue,
                  icon: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ),
        ],
      ),
//      ),
    );
  }
}

void _handlePressed_next() {
  _index++;
}

void _handlePressed_before() {
  _index--;
}

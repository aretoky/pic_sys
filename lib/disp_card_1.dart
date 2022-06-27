import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class OneCard extends StatefulWidget {
  @override
  OneCardDisp createState() => new OneCardDisp();
}

class OneCardDisp extends State<OneCard> {
  var _index = 0;
  var _maxNum = maxCardNum;
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
                Container(
                    width: picWidth,
                    height: picHeight,
                    child: Image.asset(disp_pics[_index])),
              ],
            ),
          ),
          SafeArea(
            child:Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    _index--;
                    if (_index < 0) {
                      _index = 0;
                    }
                    setState(() {});
                  },
                  iconSize: 100,
                  color: Colors.blue,
                  icon: Icon(Icons.navigate_before),
                ),
                IconButton(
                  onPressed: () {
                    _index++;
                    if (_index > _maxNum - 1) {
                      _index = _maxNum - 1;
                    }
                    setState(() {});
                  },
                  iconSize: 100,
                  color: Colors.blue,
                  icon: Icon(Icons.navigate_next),
                ),
              ],
            ),
            ),
          ),
        ],
      ),
//      ),
    );
  }
}

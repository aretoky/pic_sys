import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class ThreeCard extends StatefulWidget {
  @override
  ThreeCardDisp createState() => new ThreeCardDisp();
}

class ThreeCardDisp extends State<ThreeCard> {
  var _index = 0;
  var _maxNum = maxCardNum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3枚表示'),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: picWidth,
                    height: picHeight,
                    child: Image.asset(disp_pics[_index])),
                Container(
                    width: picWidth,
                    height: picHeight,
                    child: Image.asset(disp_pics[_index + 1])),
                Container(
                    width: picWidth,
                    height: picHeight,
                    child: Image.asset(disp_pics[_index + 2])),
              ],
            ),
          ),
          SafeArea(
            child:Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _index -= 3;
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
                      _index += 3;
                      if (_index >= (_maxNum ~/ 3) * 3 - 1) {
                        _index -= 3;
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
    );
  }
}

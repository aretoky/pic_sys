import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class FiveCard extends StatefulWidget {
  @override
  FiveCardDisp createState() => new FiveCardDisp();
}

class FiveCardDisp extends State<FiveCard> {
  var _index = 0;
  var _maxNum = maxCardNum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5枚表示'),
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
                Container(
                  width: picWidth,
                  height: picHeight,
                  child: Image.asset(disp_pics[_index + 4]),
                ),
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
                      _index -= 5;
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
                      _index += 5;
                      if (_index >= (_maxNum ~/ 5) * 5 - 1) {
                        _index -= 5;
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

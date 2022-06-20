import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class TwoCard extends StatefulWidget {
  @override
  TwoCardDisp createState() => new TwoCardDisp();
}

class TwoCardDisp extends State<TwoCard> {
  var _index = 0;
  var _maxNum = maxCardNum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2枚表示'),
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
              ],
            ),
          ),
          SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    _index -= 2;
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
                    _index += 2;
                    if (_index >= _maxNum) {
                      _index -= 2;
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
        ],
      ),
    );
  }
}

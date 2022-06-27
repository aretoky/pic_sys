import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class NineCard extends StatefulWidget {
  @override
  NineCardDisp createState() => new NineCardDisp();
}

class NineCardDisp extends State<NineCard> {
  var _index = 0;
  var _maxNum = maxCardNum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('9枚表示'),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                    Container(
                      width: picWidth,
                      height: picHeight,
                      child: Image.asset(disp_pics[_index + 5]),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: picWidth,
                      height: picHeight,
                      child: Image.asset(disp_pics[_index + 6]),
                    ),
                    Container(
                      width: picWidth,
                      height: picHeight,
                      child: Image.asset(disp_pics[_index + 7]),
                    ),
                    Container(
                      width: picWidth,
                      height: picHeight,
                      child: Image.asset(disp_pics[_index + 8]),
                    ),
                  ],
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
                      _index -= 9;
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
                      _index += 9;
                      if (_index >= (_maxNum ~/ 9) * 9 - 1) {
                        _index -= 9;
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

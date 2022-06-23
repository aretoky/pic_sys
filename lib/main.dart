import 'package:flutter/material.dart';
import 'package:flutter_application_1/disp_card_1.dart';
import 'package:flutter_application_1/disp_card_10.dart';
import 'package:flutter_application_1/disp_card_2.dart';
import 'package:flutter_application_1/disp_card_3.dart';
import 'package:flutter_application_1/disp_card_4.dart';
import 'package:flutter_application_1/disp_card_5.dart';
import 'package:flutter_application_1/disp_card_6.dart';
import 'package:flutter_application_1/disp_card_8.dart';
import 'package:flutter_application_1/disp_card_9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cotoba System(仮)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Cotoba System(仮)'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum RadioLevel { level1, level2 }

enum RadioCard { one, two, three, four, five, six, eight, nine, ten }

var pic_animal_level1 = [
  'images/animal1_1.png',
  'images/animal1_2.png',
  'images/animal1_3.png',
  'images/animal1_4.png',
  'images/animal1_5.png',
  'images/animal1_6.png',
  'images/animal1_7.png',
  'images/animal1_8.png',
  'images/animal1_9.png',
  'images/animal1_10.png',
];
var pic_goods_level1 = [
  'images/goods1_1.png',
  'images/goods1_2.png',
  'images/goods1_3.png',
  'images/goods1_4.png',
  'images/goods1_5.png',
  'images/goods1_6.png',
  'images/goods1_7.png',
  'images/goods1_8.png',
  'images/goods1_9.png',
  'images/goods1_10.png',
];
var pic_food_level1 = [
  'images/food1_1.png',
  'images/food1_2.png',
  'images/food1_3.png',
  'images/food1_4.png',
  'images/food1_5.png',
  'images/food1_6.png',
  'images/food1_7.png',
  'images/food1_8.png',
  'images/food1_9.png',
  'images/food1_10.png',
];
var pic_hito_level1 = [
  'images/hito1_1.png',
  'images/hito1_2.png',
  'images/hito1_3.png',
  'images/hito1_4.png',
  'images/hito1_5.png',
  'images/hito1_6.png',
  'images/hito1_7.png',
  'images/hito1_8.png',
  'images/hito1_9.png',
  'images/hito1_10.png',
];
var pic_norimono_level1 = [
  'images/norimono1_1.png',
  'images/norimono1_2.png',
  'images/norimono1_3.png',
  'images/norimono1_4.png',
  'images/norimono1_5.png',
  'images/norimono1_6.png',
  'images/norimono1_7.png',
  'images/norimono1_8.png',
  'images/norimono1_9.png',
  'images/norimono1_10.png',
];
var pic_animal_level2 = [
  'images/animal2_1.png',
  'images/animal2_2.png',
  'images/animal2_3.png',
  'images/animal2_4.png',
  'images/animal2_5.png',
  'images/animal2_6.png',
  'images/animal2_7.png',
  'images/animal2_8.png',
  'images/animal2_9.png',
  'images/animal2_10.png',
];
var pic_goods_level2 = [
  'images/goods2_1.png',
  'images/goods2_2.png',
  'images/goods2_3.png',
  'images/goods2_4.png',
  'images/goods2_5.png',
  'images/goods2_6.png',
  'images/goods2_7.png',
  'images/goods2_8.png',
  'images/goods2_9.png',
  'images/goods2_10.png',
];
var pic_food_level2 = [
  'images/food2_1.png',
  'images/food2_2.png',
  'images/food2_3.png',
  'images/food2_4.png',
  'images/food2_5.png',
  'images/food2_6.png',
  'images/food2_7.png',
  'images/food2_8.png',
  'images/food2_9.png',
  'images/food2_10.png',
];
var pic_hito_level2 = [
  'images/hito2_1.png',
  'images/hito2_2.png',
  'images/hito2_3.png',
  'images/hito2_4.png',
  'images/hito2_5.png',
  'images/hito2_6.png',
  'images/hito2_7.png',
  'images/hito2_8.png',
  'images/hito2_9.png',
  'images/hito2_10.png',
];
var pic_norimono_level2 = [
  'images/norimono2_1.png',
  'images/norimono2_2.png',
  'images/norimono2_3.png',
  'images/norimono2_4.png',
  'images/norimono2_5.png',
  'images/norimono2_6.png',
  'images/norimono2_7.png',
  'images/norimono2_8.png',
  'images/norimono2_9.png',
  'images/norimono2_10.png',
];

//var disp_pics = [];
var disp_pics = [];
var picWidth;
var picHeight;
var maxCardNum;

class _MyHomePageState extends State<MyHomePage> {
  var _isCheck_food = true;
  var _isCheck_animal = true;
  var _isCheck_norimono = true;
  var _isCheck_hito = true;
  var _isCheck_goods = true;

  RadioLevel? _levelValue = RadioLevel.level1;
  RadioCard? _cardValue = RadioCard.one;

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text(''),
          Text(''),
          Text(''),
          Text(''),
          Text(
            '語彙獲得レベル',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Container(
            child: Row(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: RadioListTile<RadioLevel>(
                    title: const Text(
                      '語彙レベル１',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: RadioLevel.level1,
                    groupValue: _levelValue,
                    onChanged: (RadioLevel? value) {
                      setState(() {
                        _levelValue = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<RadioLevel>(
                    title: const Text(
                      '語彙レベル２',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: RadioLevel.level2,
                    groupValue: _levelValue,
                    onChanged: (RadioLevel? value) {
                      setState(() {
                        _levelValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Text(' '),
          Text(' '),
          Text(' '),
          Text(' '),
          Text(' '),
          Text(
            'カテゴリー選択',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Text(' '),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: CheckboxListTile(
                    title: const Text(
                      "食べ物",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: _isCheck_food,
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheck_food = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                Expanded(
                  child: CheckboxListTile(
                    title: const Text(
                      "動物",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: _isCheck_animal,
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheck_animal = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                Expanded(
                  child: CheckboxListTile(
                    title: const Text(
                      "乗り物",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: _isCheck_norimono,
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheck_norimono = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                Expanded(
                  child: CheckboxListTile(
                    title: const Text(
                      "物品",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: _isCheck_goods,
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheck_goods = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                Expanded(
                  child: CheckboxListTile(
                    title: const Text(
                      "人",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: _isCheck_hito,
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheck_hito = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ],
            ),
          ),
          Text(' '),
          Text(' '),
          Text(' '),
          Text(' '),
          Text(' '),
          Text(
            'カード配列選択',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Text(' '),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: RadioListTile<RadioCard>(
                    title: const Text(
                      '１',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: RadioCard.one,
                    groupValue: _cardValue,
                    onChanged: (RadioCard? value) {
                      setState(() {
                        _cardValue = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<RadioCard>(
                    title: const Text(
                      '２',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: RadioCard.two,
                    groupValue: _cardValue,
                    onChanged: (RadioCard? value) {
                      setState(() {
                        _cardValue = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<RadioCard>(
                    title: const Text(
                      '３',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: RadioCard.three,
                    groupValue: _cardValue,
                    onChanged: (RadioCard? value) {
                      setState(() {
                        _cardValue = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<RadioCard>(
                    title: const Text(
                      '４',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: RadioCard.four,
                    groupValue: _cardValue,
                    onChanged: (RadioCard? value) {
                      setState(() {
                        _cardValue = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<RadioCard>(
                    title: const Text(
                      '５',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: RadioCard.five,
                    groupValue: _cardValue,
                    onChanged: (RadioCard? value) {
                      setState(() {
                        _cardValue = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<RadioCard>(
                    title: const Text(
                      '６',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: RadioCard.six,
                    groupValue: _cardValue,
                    onChanged: (RadioCard? value) {
                      setState(() {
                        _cardValue = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<RadioCard>(
                    title: const Text(
                      '８',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: RadioCard.eight,
                    groupValue: _cardValue,
                    onChanged: (RadioCard? value) {
                      setState(() {
                        _cardValue = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<RadioCard>(
                    title: const Text(
                      '９',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: RadioCard.nine,
                    groupValue: _cardValue,
                    onChanged: (RadioCard? value) {
                      setState(() {
                        _cardValue = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<RadioCard>(
                    title: const Text(
                      '10',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: RadioCard.ten,
                    groupValue: _cardValue,
                    onChanged: (RadioCard? value) {
                      setState(() {
                        _cardValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Text(' '),
          Text(' '),
          Text(' '),
          Text(' '),
          Text(' '),
          OutlinedButton(
            style: OutlinedButton.styleFrom(minimumSize: Size(200, 50)),
            onPressed: () {
              disp_pics = [];
              maxCardNum = 0;
              switch (_levelValue) {
                case RadioLevel.level1:
                  if (_isCheck_food == true) {
                    disp_pics = disp_pics + pic_food_level1;
                    maxCardNum += 10;
                  }
                  if (_isCheck_animal == true) {
                    disp_pics = disp_pics + pic_animal_level1;
                    maxCardNum += 10;
                  }
                  if (_isCheck_norimono == true) {
                    disp_pics = disp_pics + pic_norimono_level1;
                    maxCardNum += 10;
                  }
                  if (_isCheck_hito == true) {
                    disp_pics = disp_pics + pic_hito_level1;
                    maxCardNum += 10;
                  }
                  if (_isCheck_goods == true) {
                    disp_pics = disp_pics + pic_goods_level1;
                    maxCardNum += 10;
                  }
                  break;
                case RadioLevel.level2:
                  if (_isCheck_food == true) {
                    disp_pics = disp_pics + pic_food_level2;
                    maxCardNum += 10;
                  }
                  if (_isCheck_animal == true) {
                    disp_pics = disp_pics + pic_animal_level2;
                    maxCardNum += 10;
                  }
                  if (_isCheck_norimono == true) {
                    disp_pics = disp_pics + pic_norimono_level2;
                    maxCardNum += 10;
                  }
                  if (_isCheck_hito == true) {
                    disp_pics = disp_pics + pic_hito_level2;
                    maxCardNum += 10;
                  }
                  if (_isCheck_goods == true) {
                    disp_pics = disp_pics + pic_goods_level2;
                    maxCardNum += 10;
                  }
                  break;
              }
              disp_pics.shuffle();
              switch (_cardValue) {
                case RadioCard.one:
                  picWidth = deviceWidth * 0.7;
                  picHeight = deviceHeight * 0.7;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OneCard(),
                      ));
                  break;
                case RadioCard.two:
                  picWidth = deviceWidth * 0.7 / 2;
                  picHeight = deviceHeight * 0.7;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TwoCard(),
                      ));
                  break;
                case RadioCard.three:
                  picWidth = deviceWidth * 0.7 / 3;
                  picHeight = deviceHeight * 0.7;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThreeCard(),
                      ));
                  break;
                case RadioCard.four:
                  picWidth = deviceWidth * 0.7 / 2;
                  picHeight = deviceHeight * 0.7 / 2;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FourCard(),
                      ));
                  break;
                case RadioCard.five:
                  picWidth = deviceWidth * 0.7 / 5;
                  picHeight = deviceHeight * 0.7;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FiveCard(),
                      ));
                  break;
                case RadioCard.six:
                  picWidth = deviceWidth * 0.7 / 3;
                  picHeight = deviceHeight * 0.7 / 2;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SixCard(),
                      ));
                  break;
                case RadioCard.eight:
                  picWidth = deviceWidth * 0.75 / 4;
                  picHeight = deviceHeight * 0.75 / 2;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EightCard(),
                      ));
                  break;
                case RadioCard.nine:
                  picWidth = deviceWidth * 0.75 / 3;
                  picHeight = deviceHeight * 0.75 / 3;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NineCard(),
                      ));
                  break;
                case RadioCard.ten:
                  picWidth = deviceWidth * 0.75 / 5;
                  picHeight = deviceHeight * 0.75 / 2;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TenCard(),
                      ));
                  break;
              }
            },
            child: const Text(
              'カード表示',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

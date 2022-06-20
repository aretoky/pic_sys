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

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

enum Answer_level { level1, level2 }

enum Answer_card { one, two, three, four, five, six, eight, nine, ten }

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
var pic_etc_level1 = [
  'images/etc1_1.png',
  'images/etc1_2.png',
  'images/etc1_3.png',
  'images/etc1_4.png',
  'images/etc1_5.png',
  'images/etc1_6.png',
  'images/etc1_7.png',
  'images/etc1_8.png',
  'images/etc1_9.png',
  'images/etc1_10.png',
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
var pic_etc_level2 = [
  'images/etc2_1.png',
  'images/etc2_2.png',
  'images/etc2_3.png',
  'images/etc2_4.png',
  'images/etc2_5.png',
  'images/etc2_6.png',
  'images/etc2_7.png',
  'images/etc2_8.png',
  'images/etc2_9.png',
  'images/etc2_10.png',
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
  var word_level;
  var card_number;

  var _isCheck_food = true;
  var _isCheck_animal = true;
  var _isCheck_norimono = true;
  var _isCheck_hito = true;
  var _isCheck_etc = true;

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
              children: [
                Expanded(
                  child: RadioListTile<Answer_level>(
                    title: const Text(
                      '語彙レベル１',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_level.level1,
                    groupValue: word_level,
                    onChanged: (Answer_level? value) {
                      setState(() {
                        word_level = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_level>(
                    title: const Text(
                      '語彙レベル２',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_level.level2,
                    groupValue: word_level,
                    onChanged: (Answer_level? value) {
                      setState(() {
                        word_level = value;
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
                    value: _isCheck_food, //_isChecked[0],
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheck_food = value!;
                        //               _isChecked[0] = value!;
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
                    value: _isCheck_animal, //_isChecked[1],
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheck_animal = value!;
                        //_isChecked[1] = value!;
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
                    value: _isCheck_norimono, //_isChecked[2],
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheck_norimono = value!;
                        //_isChecked[2] = value!;
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
                    value: _isCheck_hito, //_isChecked[3],
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheck_hito = value!;
                        //_isChecked[3] = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                Expanded(
                  child: CheckboxListTile(
                    title: const Text(
                      "その他",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: _isCheck_etc, //_isChecked[4],
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheck_etc = value!;
                        //_isChecked[4] = value!;
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
                  child: RadioListTile<Answer_card>(
                    title: const Text(
                      '１',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_card.one,
                    groupValue: card_number,
                    onChanged: (Answer_card? value) {
                      setState(() {
                        card_number = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_card>(
                    title: const Text(
                      '２',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_card.two,
                    groupValue: card_number,
                    onChanged: (Answer_card? value) {
                      setState(() {
                        card_number = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_card>(
                    title: const Text(
                      '３',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_card.three,
                    groupValue: card_number,
                    onChanged: (Answer_card? value) {
                      setState(() {
                        card_number = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_card>(
                    title: const Text(
                      '４',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_card.four,
                    groupValue: card_number,
                    onChanged: (Answer_card? value) {
                      setState(() {
                        card_number = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_card>(
                    title: const Text(
                      '５',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_card.five,
                    groupValue: card_number,
                    onChanged: (Answer_card? value) {
                      setState(() {
                        card_number = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_card>(
                    title: const Text(
                      '６',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_card.six,
                    groupValue: card_number,
                    onChanged: (Answer_card? value) {
                      setState(() {
                        card_number = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_card>(
                    title: const Text(
                      '８',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_card.eight,
                    groupValue: card_number,
                    onChanged: (Answer_card? value) {
                      setState(() {
                        card_number = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_card>(
                    title: const Text(
                      '９',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_card.nine,
                    groupValue: card_number,
                    onChanged: (Answer_card? value) {
                      setState(() {
                        card_number = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_card>(
                    title: const Text(
                      '10',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_card.ten,
                    groupValue: card_number,
                    onChanged: (Answer_card? value) {
                      setState(() {
                        card_number = value;
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
              switch (word_level) {
                case Answer_level.level1:
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
                  if (_isCheck_etc == true) {
                    disp_pics = disp_pics + pic_etc_level1;
                    maxCardNum += 10;
                  }
                  break;
                case Answer_level.level2:
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
                  if (_isCheck_etc == true) {
                    disp_pics = disp_pics + pic_etc_level2;
                    maxCardNum += 10;
                  }
                  break;
              }
              disp_pics.shuffle();
              switch (card_number) {
                case Answer_card.one:
                  picWidth = deviceWidth * 0.7;
                  picHeight = deviceHeight * 0.7;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OneCard(),
                      ));
                  break;
                case Answer_card.two:
                  picWidth = deviceWidth * 0.7 / 2;
                  picHeight = deviceHeight * 0.7;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TwoCard(),
                      ));
                  break;
                case Answer_card.three:
                  picWidth = deviceWidth * 0.7 / 3;
                  picHeight = deviceHeight * 0.7;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThreeCard(),
                      ));
                  break;
                case Answer_card.four:
                  picWidth = deviceWidth * 0.7 / 2;
                  picHeight = deviceHeight * 0.7 / 2;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FourCard(),
                      ));
                  break;
                case Answer_card.five:
                  picWidth = deviceWidth * 0.7 / 5;
                  picHeight = deviceHeight * 0.7;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FiveCard(),
                      ));
                  break;
                case Answer_card.six:
                  picWidth = deviceWidth * 0.7 / 3;
                  picHeight = deviceHeight * 0.7 / 2;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SixCard(),
                      ));
                  break;
                case Answer_card.eight:
                  picWidth = deviceWidth * 0.75 / 4;
                  picHeight = deviceHeight * 0.75 / 2;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EightCard(),
                      ));
                  break;
                case Answer_card.nine:
                  picWidth = deviceWidth * 0.75 / 3;
                  picHeight = deviceHeight * 0.75 / 3;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NineCard(),
                      ));
                  break;
                case Answer_card.ten:
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

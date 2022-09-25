import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'disp_card_1.dart';
import 'disp_card_10.dart';
import 'disp_card_2.dart';
import 'disp_card_3.dart';
import 'disp_card_4.dart';
import 'disp_card_5.dart';
import 'disp_card_6.dart';
import 'disp_card_8.dart';
import 'disp_card_9.dart';
import 'disp_cards.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

// ignore: prefer_typing_uninitialized_variables
var numberOfCards = 0;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  title: 'Cotoba System(仮)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "UDGothic", // ここを追加
      ),
      home: const MyHomePage(title: 'Cotoba System(仮)'),
    );
    //  WidgetsFlutterBinding.ensureInitialized();
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

enum OnseiTag { nashi, ari }

List<String> picAnimalLevel1 = [
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
List<String> picGoodsLevel1 = [
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
List<String> picFoodLevel1 = [
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
List<String> picHitoLevel1 = [
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
List<String> picNorimonoLevel1 = [
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
List<String> picAnimalLevel2 = [
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
List<String> picGoodsLevel2 = [
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
List<String> picFoodLevel2 = [
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
List<String> picHitoLevel2 = [
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
List<String> picNorimonoLevel2 = [
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

List<String> soundAnimalLevel1 = [
  'sound/animal1_1.wav',
  'sound/animal1_2.wav',
  'sound/animal1_3.wav',
  'sound/animal1_4.wav',
  'sound/animal1_5.wav',
  'sound/animal1_6.wav',
  'sound/animal1_7.wav',
  'sound/animal1_8.wav',
  'sound/animal1_9.wav',
  'sound/animal1_10.wav',
];
List<String> soundGoodsLevel1 = [
  'sound/goods1_1.wav',
  'sound/goods1_2.wav',
  'sound/goods1_3.wav',
  'sound/goods1_4.wav',
  'sound/goods1_5.wav',
  'sound/goods1_6.wav',
  'sound/goods1_7.wav',
  'sound/goods1_8.wav',
  'sound/goods1_9.wav',
  'sound/goods1_10.wav',
];
List<String> soundFoodLevel1 = [
  'sound/food1_1.wav',
  'sound/food1_2.wav',
  'sound/food1_3.wav',
  'sound/food1_4.wav',
  'sound/food1_5.wav',
  'sound/food1_6.wav',
  'sound/food1_7.wav',
  'sound/food1_8.wav',
  'sound/food1_9.wav',
  'sound/food1_10.wav',
];
List<String> soundHitoLevel1 = [
  'sound/hito1_1.wav',
  'sound/hito1_2.wav',
  'sound/hito1_3.wav',
  'sound/hito1_4.wav',
  'sound/hito1_5.wav',
  'sound/hito1_6.wav',
  'sound/hito1_7.wav',
  'sound/hito1_8.wav',
  'sound/hito1_9.wav',
  'sound/hito1_10.wav',
];
List<String> soundNorimonoLevel1 = [
  'sound/norimono1_1.wav',
  'sound/norimono1_2.wav',
  'sound/norimono1_3.wav',
  'sound/norimono1_4.wav',
  'sound/norimono1_5.wav',
  'sound/norimono1_6.wav',
  'sound/norimono1_7.wav',
  'sound/norimono1_8.wav',
  'sound/norimono1_9.wav',
  'sound/norimono1_10.wav',
];
List<String> soundAnimalLevel2 = [
  'sound/animal2_1.wav',
  'sound/animal2_2.wav',
  'sound/animal2_3.wav',
  'sound/animal2_4.wav',
  'sound/animal2_5.wav',
  'sound/animal2_6.wav',
  'sound/animal2_7.wav',
  'sound/animal2_8.wav',
  'sound/animal2_9.wav',
  'sound/animal2_10.wav',
];
List<String> soundGoodsLevel2 = [
  'sound/goods2_1.wav',
  'sound/goods2_2.wav',
  'sound/goods2_3.wav',
  'sound/goods2_4.wav',
  'sound/goods2_5.wav',
  'sound/goods2_6.wav',
  'sound/goods2_7.wav',
  'sound/goods2_8.wav',
  'sound/goods2_9.wav',
  'sound/goods2_10.wav',
];
List<String> soundFoodLevel2 = [
  'sound/food2_1.wav',
  'sound/food2_2.wav',
  'sound/food2_3.wav',
  'sound/food2_4.wav',
  'sound/food2_5.wav',
  'sound/food2_6.wav',
  'sound/food2_7.wav',
  'sound/food2_8.wav',
  'sound/food2_9.wav',
  'sound/food2_10.wav',
];
List<String> soundHitoLevel2 = [
  'sound/hito2_1.wav',
  'sound/hito2_2.wav',
  'sound/hito2_3.wav',
  'sound/hito2_4.wav',
  'sound/hito2_5.wav',
  'sound/hito2_6.wav',
  'sound/hito2_7.wav',
  'sound/hito2_8.wav',
  'sound/hito2_9.wav',
  'sound/hito2_10.wav',
];
var soundNorimonoLevel2 = [
  'sound/norimono2_1.wav',
  'sound/norimono2_2.wav',
  'sound/norimono2_3.wav',
  'sound/norimono2_4.wav',
  'sound/norimono2_5.wav',
  'sound/norimono2_6.wav',
  'sound/norimono2_7.wav',
  'sound/norimono2_8.wav',
  'sound/norimono2_9.wav',
  'sound/norimono2_10.wav',
];

List<String> disp_pics = [];
dynamic picWidth;
dynamic picHeight;
dynamic maxCardNum;
OnseiTag? onseiFlag = OnseiTag.nashi;

class _MyHomePageState extends State<MyHomePage> {
  bool isCheckFood = true;
  bool isCheckAnimal = true;
  bool isCheckNorimono = true;
  bool isCheckHito = true;
  bool isCheckGoods = true;

  RadioLevel? _levelValue = RadioLevel.level1;
  RadioCard? _cardValue = RadioCard.one;

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;
    var dispFontSize = deviceHeight / 45;

    final dispGoiWidth = deviceWidth / 5.5;
    final dispGoiHeight = deviceHeight / 4;
    final dispCategoryWidth = deviceWidth / 5.5;
    final dispCategoryHeight = deviceHeight / 2;
    final dispCardWidth = deviceWidth / 5.5;
    final dispCardHeight = deviceHeight / 1.5;
    final dispOnseiWidth = deviceWidth / 5.5;
    final dispOnseiHeight = deviceHeight / 4;

    if (deviceWidth < 400) {
      dispFontSize = deviceHeight / (35 * deviceWidth / 400);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.pink[300],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: dispGoiWidth, //横幅
                  height: dispGoiHeight, //高さ
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '語彙獲得レベル',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: dispFontSize,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      RadioListTile<RadioLevel>(
                        title: Text(
                          '語彙レベル１',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
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
                      RadioListTile<RadioLevel>(
                        title: Text(
                          '語彙レベル２',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
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
                    ],
                  ),
                ),
                SizedBox(
                  width: dispCategoryWidth, //横幅
                  height: dispCategoryHeight, //高さ
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'カテゴリー選択', //textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: dispFontSize,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      CheckboxListTile(
                        title: Text(
                          "食べ物",
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
                            color: Colors.black,
                          ),
                        ),
                        value: isCheckFood,
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckFood = value!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: Text(
                          "動物",
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
                            color: Colors.black,
                          ),
                        ),
                        value: isCheckAnimal,
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckAnimal = value!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: Text(
                          "乗り物",
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
                            color: Colors.black,
                          ),
                        ),
                        value: isCheckNorimono,
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckNorimono = value!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: Text(
                          "物品",
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
                            color: Colors.black,
                          ),
                        ),
                        value: isCheckGoods,
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckGoods = value!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                      CheckboxListTile(
                        title: Text(
                          "ひと",
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
                            color: Colors.black,
                          ),
                        ),
                        value: isCheckHito,
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckHito = value!;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: dispCardWidth, //横幅
                  height: dispCardHeight, //高さ
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'カード配列選択',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: dispFontSize,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      RadioListTile<RadioCard>(
                        title: Text(
                          '１枚（1×1）',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
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
                      RadioListTile<RadioCard>(
                        title: Text(
                          '２枚（1×2）',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
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
                      RadioListTile<RadioCard>(
                        title: Text(
                          '３枚（1×3）',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
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
                      RadioListTile<RadioCard>(
                        title: Text(
                          '４枚（2×2）',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
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
                      RadioListTile<RadioCard>(
                        title: Text(
                          '５枚（1×5）',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
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
                      RadioListTile<RadioCard>(
                        title: Text(
                          '６枚（2×3）',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
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
                      RadioListTile<RadioCard>(
                        title: Text(
                          '８枚（2×4）',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
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
                      RadioListTile<RadioCard>(
                        title: Text(
                          '９枚（3×3）',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
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
                      RadioListTile<RadioCard>(
                        title: Text(
                          '10枚（2×5）',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
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
                    ],
                  ),
                ),
                SizedBox(
                  width: dispOnseiWidth, //横幅
                  height: dispOnseiHeight, //高さ
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '音声出力',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: dispFontSize,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      RadioListTile<OnseiTag>(
                        title: Text(
                          '音声なし',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
                            color: Colors.black,
                          ),
                        ),
                        value: OnseiTag.nashi,
                        groupValue: onseiFlag,
                        onChanged: (OnseiTag? value) {
                          setState(() {
                            onseiFlag = value;
                          });
                        },
                      ),
                      RadioListTile<OnseiTag>(
                        title: Text(
                          '音声あり',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: dispFontSize,
                            color: Colors.black,
                          ),
                        ),
                        value: OnseiTag.ari,
                        groupValue: onseiFlag,
                        onChanged: (OnseiTag? value) {
                          setState(() {
                            onseiFlag = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.blue,
                minimumSize: Size(300, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'カード表示',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: dispFontSize,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                disp_pics = [];
                maxCardNum = 0;
                switch (_levelValue) {
                  case RadioLevel.level1:
                    if (isCheckFood == true) {
                      disp_pics = disp_pics + picFoodLevel1;
                      maxCardNum += 10;
                    }
                    if (isCheckAnimal == true) {
                      disp_pics = disp_pics + picAnimalLevel1;
                      maxCardNum += 10;
                    }
                    if (isCheckNorimono == true) {
                      disp_pics = disp_pics + picNorimonoLevel1;
                      maxCardNum += 10;
                    }
                    if (isCheckHito == true) {
                      disp_pics = disp_pics + picHitoLevel1;
                      maxCardNum += 10;
                    }
                    if (isCheckGoods == true) {
                      disp_pics = disp_pics + picGoodsLevel1;
                      maxCardNum += 10;
                    }
                    break;
                  case RadioLevel.level2:
                    if (isCheckFood == true) {
                      disp_pics = disp_pics + picFoodLevel2;
                      maxCardNum += 10;
                    }
                    if (isCheckAnimal == true) {
                      disp_pics = disp_pics + picAnimalLevel2;
                      maxCardNum += 10;
                    }
                    if (isCheckNorimono == true) {
                      disp_pics = disp_pics + picNorimonoLevel2;
                      maxCardNum += 10;
                    }
                    if (isCheckHito == true) {
                      disp_pics = disp_pics + picHitoLevel2;
                      maxCardNum += 10;
                    }
                    if (isCheckGoods == true) {
                      disp_pics = disp_pics + picGoodsLevel2;
                      maxCardNum += 10;
                    }
                    break;
                  default:
                    break;
                }
                disp_pics.shuffle();

                switch (_cardValue) {
                  case RadioCard.one:
                    picWidth = deviceWidth * 0.7;
                    picHeight = deviceHeight * 0.7;
                    numberOfCards = 1;
                    break;
                  case RadioCard.two:
                    picWidth = deviceWidth * 0.7 / 2;
                    picHeight = deviceHeight * 0.7;
                    numberOfCards = 2;
                    break;
                  case RadioCard.three:
                    picWidth = deviceWidth * 0.7 / 3;
                    picHeight = deviceHeight * 0.7;
                    numberOfCards = 3;
                    break;
                  case RadioCard.four:
                    picWidth = deviceWidth * 0.7 / 2;
                    picHeight = deviceHeight * 0.7 / 2;
                    numberOfCards = 4;
                    break;
                  case RadioCard.five:
                    picWidth = deviceWidth * 0.7 / 5;
                    picHeight = deviceHeight * 0.7;
                    numberOfCards = 5;
                    break;
                  case RadioCard.six:
                    picWidth = deviceWidth * 0.7 / 3;
                    picHeight = deviceHeight * 0.7 / 2;
                    numberOfCards = 6;
                    break;
                  case RadioCard.eight:
                    picWidth = deviceWidth * 0.75 / 4;
                    picHeight = deviceHeight * 0.75 / 2;
                    numberOfCards = 8;
                    break;
                  case RadioCard.nine:
                    picWidth = deviceWidth * 0.75 / 3;
                    picHeight = deviceHeight * 0.75 / 3;
                    numberOfCards = 9;
                    break;
                  case RadioCard.ten:
                    picWidth = deviceWidth * 0.75 / 5;
                    picHeight = deviceHeight * 0.75 / 2;
                    numberOfCards = 10;
                    break;
                  default:
                    break;
                }
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DispCards(),
                    ));
/*
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
                  default:
                    break;
                }*/
              },
            ),
          ],
        ),
      ),
    );
  }
}

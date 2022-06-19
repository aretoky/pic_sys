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

enum Answer_1 { level1, level2, level3, level4 }

enum Answer_2 { one, two, three, four, five, six, eight, nine, ten }

class _MyHomePageState extends State<MyHomePage> {
  Map<int, Answer_1?> answerVal_1 = {};
  Map<int, Answer_2?> answerVal_2 = {};

  bool isChecked = false;
  int index = 0;
  var _isChecked = List.filled(20, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      /* ここに戻る */
      body: Column(
        children: <Widget>[
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
                  child: RadioListTile<Answer_1>(
                    title: const Text(
                      '語彙レベル１',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_1.level1,
                    groupValue: answerVal_1[index],
                    onChanged: (Answer_1? value) {
                      setState(() {
                        answerVal_1[index] = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_1>(
                    title: const Text(
                      '語彙レベル２',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_1.level2,
                    groupValue: answerVal_1[index],
                    onChanged: (Answer_1? value) {
                      setState(() {
                        answerVal_1[index] = value;
                      });
                    },
                  ),
                ),
/*                Expanded(
                  child: RadioListTile<Answer_1>(
                    title: const Text('語彙レベル３'),
                    value: Answer_1.level3,
                    groupValue: answerVal_1[index],
                    onChanged: (Answer_1? value) {
                      setState(() {
                        answerVal_1[index] = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_1>(
                    title: const Text('語彙レベル４'),
                    value: Answer_1.level4,
                    groupValue: answerVal_1[index],
                    onChanged: (Answer_1? value) {
                      setState(() {
                        answerVal_1[index] = value;
                      });
                    },
                  ),
                ),
 */
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
                    value: _isChecked[0],
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked[0] = value!;
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
                    value: _isChecked[1],
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked[1] = value!;
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
                    value: _isChecked[2],
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked[2] = value!;
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
                    value: _isChecked[3],
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked[3] = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
/*                Expanded(
                  child: CheckboxListTile(
                    title: Text("場所"),
                    value: _isChecked[4],
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked[4] = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
                Expanded(
                  child: CheckboxListTile(
                    title: Text("動詞"),
                    value: _isChecked[5],
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked[5] = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
*/
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
                    value: _isChecked[6],
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked[6] = value!;
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
                  child: RadioListTile<Answer_2>(
                    title: const Text(
                      '１',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_2.one,
                    groupValue: answerVal_2[index],
                    onChanged: (Answer_2? value) {
                      setState(() {
                        answerVal_2[index] = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_2>(
                    title: const Text(
                      '２',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_2.two,
                    groupValue: answerVal_2[index],
                    onChanged: (Answer_2? value) {
                      setState(() {
                        answerVal_2[index] = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_2>(
                    title: const Text(
                      '３',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_2.three,
                    groupValue: answerVal_2[index],
                    onChanged: (Answer_2? value) {
                      setState(() {
                        answerVal_2[index] = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_2>(
                    title: const Text(
                      '４',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_2.four,
                    groupValue: answerVal_2[index],
                    onChanged: (Answer_2? value) {
                      setState(() {
                        answerVal_2[index] = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_2>(
                    title: const Text(
                      '５',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_2.five,
                    groupValue: answerVal_2[index],
                    onChanged: (Answer_2? value) {
                      setState(() {
                        answerVal_2[index] = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_2>(
                    title: const Text(
                      '６',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_2.six,
                    groupValue: answerVal_2[index],
                    onChanged: (Answer_2? value) {
                      setState(() {
                        answerVal_2[index] = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_2>(
                    title: const Text(
                      '８',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_2.eight,
                    groupValue: answerVal_2[index],
                    onChanged: (Answer_2? value) {
                      setState(() {
                        answerVal_2[index] = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_2>(
                    title: const Text(
                      '９',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_2.nine,
                    groupValue: answerVal_2[index],
                    onChanged: (Answer_2? value) {
                      setState(() {
                        answerVal_2[index] = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Answer_2>(
                    title: const Text(
                      '10',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    value: Answer_2.ten,
                    groupValue: answerVal_2[index],
                    onChanged: (Answer_2? value) {
                      setState(() {
                        answerVal_2[index] = value;
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
              child:
              (() {
                switch (answerVal_2[0]) {
                  case Answer_2.one:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OneCardDisp(),
                        ));
                    break;
                  case Answer_2.two:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TwoCardsDisp(),
                        ));
                    break;
                  case Answer_2.three:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThreeCardsDisp(),
                        ));
                    break;
                  case Answer_2.four:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FourCardsDisp(),
                        ));
                    break;
                  case Answer_2.five:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FiveCardsDisp(),
                        ));
                    break;
                  case Answer_2.six:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SixCardsDisp(),
                        ));
                    break;
                  case Answer_2.eight:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EightCardsDisp(),
                        ));
                    break;
                  case Answer_2.nine:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NineCardsDisp(),
                        ));
                    break;
                  case Answer_2.ten:
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TenCardsDisp(),
                        ));
                    break;
                }
              })();

              //画像のファイル名の検索をして、リストにして次の画面に渡す
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

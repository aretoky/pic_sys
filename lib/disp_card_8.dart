import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';

class EightCard extends StatefulWidget {
  @override
  EightCardDisp createState() => new EightCardDisp();
}

class EightCardDisp extends State<EightCard> {
  var _index = 0;
  var _maxNum = maxCardNum;
  late AudioPlayer _player;
  var cardSound = '';

  @override
  void initState() {
    super.initState();
    _setupSession();
  }

  Future<void> _setupSession() async {
    _player = AudioPlayer();
    //  final session = await AudioSession.instance;
    //  await session.configure(AudioSessionConfiguration.speech());
    //await _loadAudioFile();
  }

  Future<void> _playSoundFile() async {
    if (onseiFlag == OnseiTag.ari) {
      await _loadAudioFile();
      await _player.play();
    }
  }

  Future<void> _loadAudioFile() async {
    await _player.setAsset(cardSound); // アセット(ローカル)のファイル
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('8枚表示'),
//      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        cardSound = disp_pics[_index];
                        cardSound = cardSound.replaceFirst('images', 'sounds');
                        cardSound = cardSound.replaceFirst('png', 'wav');
                        await _playSoundFile();
                      },
                      child: Container(
                        width: picWidth,
                        height: picHeight,
                        child: Image.asset(disp_pics[_index]),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        cardSound = disp_pics[_index + 1];
                        cardSound = cardSound.replaceFirst('images', 'sounds');
                        cardSound = cardSound.replaceFirst('png', 'wav');
                        await _playSoundFile();
                      },
                      child: Container(
                        width: picWidth,
                        height: picHeight,
                        child: Image.asset(disp_pics[_index + 1]),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        cardSound = disp_pics[_index + 2];
                        cardSound = cardSound.replaceFirst('images', 'sounds');
                        cardSound = cardSound.replaceFirst('png', 'wav');
                        await _playSoundFile();
                      },
                      child: Container(
                        width: picWidth,
                        height: picHeight,
                        child: Image.asset(disp_pics[_index + 2]),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        cardSound = disp_pics[_index + 3];
                        cardSound = cardSound.replaceFirst('images', 'sounds');
                        cardSound = cardSound.replaceFirst('png', 'wav');
                        await _playSoundFile();
                      },
                      child: Container(
                        width: picWidth,
                        height: picHeight,
                        child: Image.asset(disp_pics[_index + 3]),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        cardSound = disp_pics[_index + 4];
                        cardSound = cardSound.replaceFirst('images', 'sounds');
                        cardSound = cardSound.replaceFirst('png', 'wav');
                        await _playSoundFile();
                      },
                      child: Container(
                        width: picWidth,
                        height: picHeight,
                        child: Image.asset(disp_pics[_index + 4]),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        cardSound = disp_pics[_index + 5];
                        cardSound = cardSound.replaceFirst('images', 'sounds');
                        cardSound = cardSound.replaceFirst('png', 'wav');
                        await _playSoundFile();
                      },
                      child: Container(
                        width: picWidth,
                        height: picHeight,
                        child: Image.asset(disp_pics[_index + 5]),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        cardSound = disp_pics[_index + 6];
                        cardSound = cardSound.replaceFirst('images', 'sounds');
                        cardSound = cardSound.replaceFirst('png', 'wav');
                        await _playSoundFile();
                      },
                      child: Container(
                        width: picWidth,
                        height: picHeight,
                        child: Image.asset(disp_pics[_index + 6]),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        cardSound = disp_pics[_index + 7];
                        cardSound = cardSound.replaceFirst('images', 'sounds');
                        cardSound = cardSound.replaceFirst('png', 'wav');
                        await _playSoundFile();
                      },
                      child: Container(
                        width: picWidth,
                        height: picHeight,
                        child: Image.asset(disp_pics[_index + 7]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _index -= 8;
                      if (_index < 0) {
                        _index = 0;
                        Navigator.pop(context);
                      }
                      setState(() {});
                    },
                    iconSize: 50,
                    color: Colors.blue,
                    icon: Icon(Icons.navigate_before),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    iconSize: 50,
                    color: Colors.yellow,
                    icon: Icon(Icons.restart_alt),
                  ),
                  IconButton(
                    onPressed: () {
                      _index += 8;
                      if (_index >= (_maxNum ~/ 8) * 8 - 1) {
                        _index -= 8;
                      }
                      setState(() {});
                    },
                    iconSize: 50,
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

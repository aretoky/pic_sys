import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
//import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/audio_cache.dart';

class OneCard extends StatefulWidget {
  @override
  OneCardDisp createState() => new OneCardDisp();
}

class OneCardDisp extends State<OneCard> {
  var _index = 0;
  final _maxNum = maxCardNum;
  late AudioPlayer _player;
  var cardSound = '';

  @override
  void initState() {
    super.initState();
    _setupSession();
  }

//  AudioCache _player = AudioCache();

  Future<void> _setupSession() async {
    _player = AudioPlayer();
    final session = await AudioSession.instance;
//    await session.configure(AudioSessionConfiguration.speech());
//    await _loadAudioFile();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
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

/*  void dispose() {
    // インスタンスをオブザーバー登録を削除する
    WidgetsBinding.instance?.removeObserver(this);
    // デコーダやバッファを解放し、他のアプリ(リソース)が活用できるようにする。
    _player.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('1枚表示'),
//      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      child: Image.asset(disp_pics[_index])),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Align(
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
                      _index++;
                      if (_index > _maxNum - 1) {
                        _index = _maxNum - 1;
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
//      ),
    );
  }
}

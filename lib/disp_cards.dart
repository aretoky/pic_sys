import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:just_audio/just_audio.dart';

class DispCards extends StatefulWidget {
  const DispCards({super.key});

  @override
  CardDisplay createState() => CardDisplay();
}

class CardDisplay extends State<DispCards> {
  var index = 0;
  late AudioPlayer _player;
  var cardSound = '';

  @override
  void initState() {
    super.initState();
    _setupSession();
  }

  Future<void> _setupSession() async {
    _player = AudioPlayer();
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
      body: Stack(
        children: [
          setingCards(),
/*
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                setingCards(),*/
/*
                InkWell(
                  onTap: () async {
                    cardSound = disp_pics[index];
                    cardSound = cardSound.replaceFirst('images', 'sounds');
                    cardSound = cardSound.replaceFirst('png', 'wav');
                    await _playSoundFile();
                  },
                  child: SizedBox(
                      width: picWidth,
                      height: picHeight,
                      child: Image.asset(disp_pics[index])),
                ),
                InkWell(
                  onTap: () async {
                    cardSound = disp_pics[index + 1];
                    cardSound = cardSound.replaceFirst('images', 'sounds');
                    cardSound = cardSound.replaceFirst('png', 'wav');
                    await _playSoundFile();
                  },
                  child: SizedBox(
                      width: picWidth,
                      height: picHeight,
                      child: Image.asset(disp_pics[index + 1])),
                ),*/

          SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      index -= numberOfCards;
                      if (index < 0) {
                        index = 0;
                        Navigator.pop(context);
                      }
                      setState(() {});
                    },
                    iconSize: 50,
                    color: Colors.blue,
                    icon: const Icon(Icons.navigate_before),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    iconSize: 50,
                    color: Colors.yellow,
                    icon: const Icon(Icons.restart_alt),
                  ),
                  IconButton(
                    onPressed: () {
                      index += numberOfCards;
                      if (index >= maxCardNum) {
                        index -= numberOfCards;
                      }
                      setState(() {});
                    },
                    iconSize: 50,
                    color: Colors.blue,
                    icon: const Icon(Icons.navigate_next),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  setingCards() {
    int columnSize = 1, rowSize = 1;
    switch (numberOfCards) {
      case 1:
        columnSize = 1;
        rowSize = 1;
        break;
      case 2:
        columnSize = 1;
        rowSize = 2;
        break;
      case 3:
        columnSize = 1;
        rowSize = 3;
        break;
      case 4:
        columnSize = 2;
        rowSize = 2;
        break;
      case 5:
        columnSize = 1;
        rowSize = 5;
        break;
      case 6:
        columnSize = 2;
        rowSize = 3;
        break;
      case 8:
        columnSize = 2;
        rowSize = 4;
        break;
      case 9:
        columnSize = 3;
        rowSize = 3;
        break;
      case 10:
        columnSize = 2;
        rowSize = 5;
        break;
    }
    return displayCards(columnSize, rowSize);
  }

  displayCards(int columnSize, int rowSize) {
    int k = 0;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < columnSize; i++) ...{
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (int j = 0; j < rowSize; j++, k++) ...{
                  InkWell(
                    onTap: () async {
                      cardSound = disp_pics[index + k];
                      cardSound = cardSound.replaceFirst('images', 'sounds');
                      cardSound = cardSound.replaceFirst('png', 'wav');
                      await _playSoundFile();
                    },
                    child: SizedBox(
                        width: picWidth,
                        height: picHeight,
                        child: Image.asset(disp_pics[index + k])),
                  ),
                },
              ],
            ),
          },
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dispCard.dart';
import 'firebase_options.dart';

const List<String> tools1Str = [
  'ボール',
  '本',
  'はさみ',
  '風船',
  'シャボン玉',
  '鉛筆',
  'テープ',
  'ピアノ',
  '電池',
  'くつ',
  'くつ下',
  '長靴',
  'ぼうし',
  'かばん',
  'ずぼん'
];
const List<String> tools1File = [
  't_bo-ru.png',
  't_hon.png',
  't_hasami.png',
  't_fu-sen.png',
  't_shabondama.png',
  't_enpitsu.png',
  't_te-pu.png',
  't_piano.png',
  't_denchi.png',
  't_kutsu.png',
  't_kutsushita.png',
  't_nagagutsu.png',
  't_bo-shi.png',
  't_kaban.png',
  't_zubon.png'
];
const List<String> tools2Str = [
  'スプーン',
  'コップ',
  '傘',
  '椅子',
  '鍵',
  'テレビ',
  'お皿',
  '箸',
  'ティッシュ',
  '布団',
  'タオル',
  '時計',
  '歯ブラシ',
  '掃除機',
  'メガネ'
];
const List<String> tools2File = [
  't_supu-n.png',
  't_koppu.png',
  't_kasa.png',
  't_isu.png',
  't_kagi.png',
  't_terebi.png',
  't_osara.png',
  't_hashi.png',
  't_thissyu.png',
  't_futon.png',
  't_taoru.png',
  't_toke-.png',
  't_haburashi.png',
  't_so-jiki.png',
  't_megane.png'
];

const List<String> person1Str = [
  '手',
  '目',
  '足',
  '耳',
  '鼻',
  '口',
  '歯',
  'ひざ',
  'ひじ',
  '祖母',
  '祖父',
  '赤ちゃん',
  '警官',
  '医者',
  '先生'
];

const List<String> person1File = [
  'p_te.png',
  'p_me.png',
  'p_ashi.png',
  'p_mimi.png',
  'p_hana.png',
  'p_kuchi.png',
  'p_ha.png',
  'p_hiza.png',
  'p_hiji.png',
  'p_sobo.png',
  'p_sofu.png',
  'p_akachan.png',
  'p_ke-kan.png',
  'p_isha.png',
  'p_sense-.png'
];

const List<String> person2Str = [
  'うんち',
  '鬼',
  'サンタ',
  'おばけ',
  'トイレ',
  'お風呂',
  'ドア',
  '窓',
  '家',
  '階段',
  'トンネル',
  'プール',
  '病院',
  '砂場',
  '滑り台'
];

const List<String> person2File = [
  'p_unchi.png',
  'p_oni.png',
  'p_santa.png',
  'p_obake.png',
  'p_toire.png',
  'p_ofuro.png',
  'p_doa.png',
  'p_mado.png',
  'p_ie.png',
  'p_kaidan.png',
  'p_tonneru.png',
  'p_pu-ru.png',
  'p_byo-in.png',
  'p_sunaba.png',
  'p_suberidai.png'
];
const List<String> lives1Str = [
  '犬',
  '猫',
  '象',
  '豚',
  'うさぎ',
  'ライオン',
  'くま',
  '猿',
  'パンダ',
  'キリン',
  '馬',
  '牛',
  '鳥',
  'ペンギン',
  'わに'
];

const List<String> lives1File = [
  'l_inu.png',
  'l_neko.png',
  'l_zo.png',
  'l_buta.png',
  'l_usagi.png',
  'l_raion.png',
  'l_kuma.png',
  'l_saru.png',
  'l_panda.png',
  'l_kirin.png',
  'l_uma.png',
  'l_ushi.png',
  'l_tori.png',
  'l_pengin.png',
  'l_wani.png'
];
const List<String> lives2Str = [
  '蛇',
  'イルカ',
  '金魚',
  '魚',
  '亀',
  'カエル',
  'カニ',
  'エビ',
  '蝶',
  'てんとう虫',
  '青虫',
  '花',
  '木',
  '葉っぱ',
  'どんぐり'
];
const List<String> lives2File = [
  'l_hebi.png',
  'l_iruka.png',
  'l_kingyo.png',
  'l_sakana.png',
  'l_kame.png',
  'l_kaeru.png',
  'l_kani.png',
  'l_ebi.png',
  'l_cho.png',
  'l_tento-mushi.png',
  'l_aomushi.png',
  'l_hana.png',
  'l_ki.png',
  'l_happa.png',
  'l_donguri.png'
];
const List<String> foods1Str = [
  'にんじん',
  'トマト',
  'きゅうり',
  'かぼちゃ',
  'じゃがいも',
  'ブロッコリ',
  'きのこ',
  '大根',
  '玉ねぎ',
  'キャベツ',
  'ピーマン',
  'なすび',
  'かいわれ',
  'ねぎ',
  'さつまいも'
];
const List<String> foods1File = [
  'f_ninjin.png',
  'f_tomato.png',
  'f_kyu-ri.png',
  'f_kabocha.png',
  'f_jagaimo.png',
  'f_burokkori.png',
  'f_kinoko.png',
  'f_daikon.png',
  'f_tamanegi.png',
  'f_kyabetsu.png',
  'f_pi-man.png',
  'f_nasubi.png',
  'f_kaiware.png',
  'f_negi.png',
  'f_satsumaimo.png'
];

const List<String> foods2Str = [
  'パイン',
  'りんご',
  'いちご',
  'バナナ',
  'ぶどう',
  'みかん',
  '桃',
  'すいか',
  'マンゴー',
  '柿',
  'レモン',
  'キウイ',
  'さくらんぼ',
  'メロン',
  'アボカド'
];

const List<String> foods2File = [
  'f_pain.png',
  'f_ringo.png',
  'f_ichigo.png',
  'f_banana.png',
  'f_budo-.png',
  'f_mikan.png',
  'f_momo.png',
  'f_suika.png',
  'f_mango-.png',
  'f_kaki.png',
  'f_remon.png',
  'f_kiui.png',
  'f_sakuranbo.png',
  'f_meron.png',
  'f_abokado.png'
];
const List<String> foods3Str = [
  'ご飯',
  'おにぎり',
  'パン',
  'うどん',
  'カレー',
  'ラーメン',
  'スパゲティ',
  '寿司',
  'ポテト',
  '卵',
  '餃子',
  '納豆',
  '豆腐',
  'ステーキ',
  'ハンバーグ'
];
const List<String> foods3File = [
  'f_gohan.png',
  'f_onigiri.png',
  'f_pan.png',
  'f_udon.png',
  'f_kare-.png',
  'f_ra-men.png',
  'f_supagethi.png',
  'f_sushi.png',
  'f_poteto.png',
  'f_tamago.png',
  'f_gyo-za.png',
  'f_natto-.png',
  'f_toufu.png',
  'f_sute-ki.png',
  'f_hanba-gu.png'
];

const List<String> foods4Str = [
  'アイス',
  'ケーキ',
  'ドーナツ',
  'チョコ',
  'プリン',
  'かき氷',
  'チップス',
  'キャンディ',
  'クッキー',
  'だんご',
  'もち',
  'ビール',
  'コーヒー',
  '牛乳',
  'ジュース'
];

const List<String> foods4File = [
  'f_aisu.png',
  'f_ke-ki.png',
  'f_do-natsu.png',
  'f_choko.png',
  'f_purin.png',
  'f_kakigo-ri.png',
  'f_chippusu.png',
  'f_kyandhi.png',
  'f_kukki-.png',
  'f_dango.png',
  'f_mochi.png',
  'f_bi-ru.png',
  'f_ko-hi-.png',
  'f_gyu-nyu-.png',
  'f_ju-su.png'
];

const List<String> ridesStr = [
  '車',
  '電車',
  '飛行機',
  '船',
  '自転車',
  '三輪車',
  'バス',
  'トラック',
  '消防車',
  '救急車',
  'ブルドーザ',
  'パトカー',
  'ロケット',
  'UFO',
  '潜水艦'
];
const List<String> ridesFile = [
  'r_kuruma.png',
  'r_densha.png',
  'r_hiko-ki.png',
  'r_fune.png',
  'r_jitensha.png',
  'r_sanrinsha.png',
  'r_basu.png',
  'r_torakku.png',
  'r_sho-bo-sha.png',
  'r_kyu-kyu-sha.png',
  'r_burudo-za.png',
  'r_patoka-.png',
  'r_roketto.png',
  'r_ufo.png',
  'r_sensuikan.png'
];

const List<String> etcsStr = [
  '月',
  '星',
  '雲',
  '雪',
  '雨',
  '虹',
  '水',
  '氷',
  '山',
  '海',
  '赤',
  '青',
  '黄色',
  '丸',
  '三角'
];
const List<String> etcsFile = [
  'e_tsuki.png',
  'e_hoshi.png',
  'e_kumo.png',
  'e_yuki.png',
  'e_ame.png',
  'e_niji.png',
  'e_mizu.png',
  'e_ko-ri.png',
  'e_yama.png',
  'e_umi.png',
  'e_aka.png',
  'e_ao.png',
  'e_ki-ro.png',
  'e_maru.png',
  'e_sankaku.png'
];

List<Widget> tools1 = <Widget>[
  Text(tools1Str[0]),
  Text(tools1Str[1]),
  Text(tools1Str[2]),
  Text(tools1Str[3]),
  Text(tools1Str[4]),
  Text(tools1Str[5]),
  Text(tools1Str[6]),
  Text(tools1Str[7]),
  Text(tools1Str[8]),
  Text(tools1Str[9]),
  Text(tools1Str[10]),
  Text(tools1Str[11]),
  Text(tools1Str[12]),
  Text(tools1Str[13]),
  Text(tools1Str[14]),
];
List<Widget> tools2 = <Widget>[
  Text(tools2Str[0]),
  Text(tools2Str[1]),
  Text(tools2Str[2]),
  Text(tools2Str[3]),
  Text(tools2Str[4]),
  Text(tools2Str[5]),
  Text(tools2Str[6]),
  Text(tools2Str[7]),
  Text(tools2Str[8]),
  Text(tools2Str[9]),
  Text(tools2Str[10]),
  Text(tools2Str[11]),
  Text(tools2Str[12]),
  Text(tools2Str[13]),
  Text(tools2Str[14]),
];
List<Widget> person1 = <Widget>[
  Text(person1Str[0]),
  Text(person1Str[1]),
  Text(person1Str[2]),
  Text(person1Str[3]),
  Text(person1Str[4]),
  Text(person1Str[5]),
  Text(person1Str[6]),
  Text(person1Str[7]),
  Text(person1Str[8]),
  Text(person1Str[9]),
  Text(person1Str[10]),
  Text(person1Str[11]),
  Text(person1Str[12]),
  Text(person1Str[13]),
  Text(person1Str[14]),
];
List<Widget> person2 = <Widget>[
  Text(person2Str[0]),
  Text(person2Str[1]),
  Text(person2Str[2]),
  Text(person2Str[3]),
  Text(person2Str[4]),
  Text(person2Str[5]),
  Text(person2Str[6]),
  Text(person2Str[7]),
  Text(person2Str[8]),
  Text(person2Str[9]),
  Text(person2Str[10]),
  Text(person2Str[11]),
  Text(person2Str[12]),
  Text(person2Str[13]),
  Text(person2Str[14]),
];
List<Widget> lives1 = <Widget>[
  Text(lives1Str[0]),
  Text(lives1Str[1]),
  Text(lives1Str[2]),
  Text(lives1Str[3]),
  Text(lives1Str[4]),
  Text(lives1Str[5]),
  Text(lives1Str[6]),
  Text(lives1Str[7]),
  Text(lives1Str[8]),
  Text(lives1Str[9]),
  Text(lives1Str[10]),
  Text(lives1Str[11]),
  Text(lives1Str[12]),
  Text(lives1Str[13]),
  Text(lives1Str[14]),
];
List<Widget> lives2 = <Widget>[
  Text(lives2Str[0]),
  Text(lives2Str[1]),
  Text(lives2Str[2]),
  Text(lives2Str[3]),
  Text(lives2Str[4]),
  Text(lives2Str[5]),
  Text(lives2Str[6]),
  Text(lives2Str[7]),
  Text(lives2Str[8]),
  Text(lives2Str[9]),
  Text(lives2Str[10]),
  Text(lives2Str[11]),
  Text(lives2Str[12]),
  Text(lives2Str[13]),
  Text(lives2Str[14]),
];
List<Widget> foods1 = <Widget>[
  Text(foods1Str[0]),
  Text(foods1Str[1]),
  Text(foods1Str[2]),
  Text(foods1Str[3]),
  Text(foods1Str[4]),
  Text(foods1Str[5]),
  Text(foods1Str[6]),
  Text(foods1Str[7]),
  Text(foods1Str[8]),
  Text(foods1Str[9]),
  Text(foods1Str[10]),
  Text(foods1Str[11]),
  Text(foods1Str[12]),
  Text(foods1Str[13]),
  Text(foods1Str[14]),
];
List<Widget> foods2 = <Widget>[
  Text(foods2Str[0]),
  Text(foods2Str[1]),
  Text(foods2Str[2]),
  Text(foods2Str[3]),
  Text(foods2Str[4]),
  Text(foods2Str[5]),
  Text(foods2Str[6]),
  Text(foods2Str[7]),
  Text(foods2Str[8]),
  Text(foods2Str[9]),
  Text(foods2Str[10]),
  Text(foods2Str[11]),
  Text(foods2Str[12]),
  Text(foods2Str[13]),
  Text(foods2Str[14]),
];
List<Widget> foods3 = <Widget>[
  Text(foods3Str[0]),
  Text(foods3Str[1]),
  Text(foods3Str[2]),
  Text(foods3Str[3]),
  Text(foods3Str[4]),
  Text(foods3Str[5]),
  Text(foods3Str[6]),
  Text(foods3Str[7]),
  Text(foods3Str[8]),
  Text(foods3Str[9]),
  Text(foods3Str[10]),
  Text(foods3Str[11]),
  Text(foods3Str[12]),
  Text(foods3Str[13]),
  Text(foods3Str[14]),
];
List<Widget> foods4 = <Widget>[
  Text(foods4Str[0]),
  Text(foods4Str[1]),
  Text(foods4Str[2]),
  Text(foods4Str[3]),
  Text(foods4Str[4]),
  Text(foods4Str[5]),
  Text(foods4Str[6]),
  Text(foods4Str[7]),
  Text(foods4Str[8]),
  Text(foods4Str[9]),
  Text(foods4Str[10]),
  Text(foods4Str[11]),
  Text(foods4Str[12]),
  Text(foods4Str[13]),
  Text(foods4Str[14]),
];
List<Widget> rides = <Widget>[
  Text(ridesStr[0]),
  Text(ridesStr[1]),
  Text(ridesStr[2]),
  Text(ridesStr[3]),
  Text(ridesStr[4]),
  Text(ridesStr[5]),
  Text(ridesStr[6]),
  Text(ridesStr[7]),
  Text(ridesStr[8]),
  Text(ridesStr[9]),
  Text(ridesStr[10]),
  Text(ridesStr[11]),
  Text(ridesStr[12]),
  Text(ridesStr[13]),
  Text(ridesStr[14]),
];
List<Widget> etcs = <Widget>[
  Text(etcsStr[0]),
  Text(etcsStr[1]),
  Text(etcsStr[2]),
  Text(etcsStr[3]),
  Text(etcsStr[4]),
  Text(etcsStr[5]),
  Text(etcsStr[6]),
  Text(etcsStr[7]),
  Text(etcsStr[8]),
  Text(etcsStr[9]),
  Text(etcsStr[10]),
  Text(etcsStr[11]),
  Text(etcsStr[12]),
  Text(etcsStr[13]),
  Text(etcsStr[14]),
];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

// ignore: prefer_typing_uninitialized_variables
var numberOfCards = 1;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  title: 'Cotoba System(仮)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "UDGothic",
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

//enum RadioLevel { level1, level2 }
bool vertical = false;

enum RadioCard { one, two, three, four, five, six, eight, nine, ten }

//enum OnseiTag { nashi, ari }
/*
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
*/
List<String> dispPics = [];
dynamic picWidth;
dynamic picHeight;
int maxCardNum = 0;

//OnseiTag? onseiFlag = OnseiTag.nashi;

class _MyHomePageState extends State<MyHomePage> {
  final List<bool> selectTools1 = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<bool> selectTools2 = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<bool> selectPerson1 = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<bool> selectPerson2 = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<bool> selectLives1 = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<bool> selectLives2 = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<bool> selectFoods1 = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<bool> selectFoods2 = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<bool> selectFoods3 = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<bool> selectFoods4 = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<bool> selectRides = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<bool> selectEtcs = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  //RadioLevel? _levelValue = RadioLevel.level1;
  RadioCard? cardValue = RadioCard.one;

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight = MediaQuery.of(context).size.height;
    //  var dispFontSize = deviceHeight / 45;

    return Scaffold(
      //   appBar: AppBar(title: Text(widget.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text('物品'),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      toggleButtonSet(selectTools1, tools1),
                      toggleButtonSet(selectTools2, tools2),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('人'),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      toggleButtonSet(selectPerson1, person1),
                      toggleButtonSet(selectPerson2, person2),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('生物'),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      toggleButtonSet(selectLives1, lives1),
                      toggleButtonSet(selectLives2, lives2),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('食べ物'),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      toggleButtonSet(selectFoods1, foods1),
                      toggleButtonSet(selectFoods2, foods2),
                      toggleButtonSet(selectFoods3, foods3),
                      toggleButtonSet(selectFoods4, foods4),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('乗り物'),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      toggleButtonSet(selectRides, rides),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('その他'),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      toggleButtonSet(selectEtcs, etcs),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text('選択語数：$maxCardNum語'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: deviceWidth * 0.7,
                height: deviceHeight * 0.1,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  border: Border.all(width: 1, color: Colors.blue),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('表示カード枚数',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: [
                            Radio(
                              value: RadioCard.one,
                              groupValue: cardValue,
                              onChanged: (value) {
                                setState(() {
                                  cardValue = value as RadioCard?;
                                });
                              },
                            ),
                            const Text('1枚')
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: RadioCard.two,
                              groupValue: cardValue,
                              onChanged: (value) {
                                setState(() {
                                  cardValue = value as RadioCard?;
                                });
                              },
                            ),
                            const Text('2枚')
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: RadioCard.three,
                              groupValue: cardValue,
                              onChanged: (value) {
                                setState(() {
                                  cardValue = value as RadioCard?;
                                });
                              },
                            ),
                            const Text('3枚')
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: RadioCard.four,
                              groupValue: cardValue,
                              onChanged: (value) {
                                setState(() {
                                  cardValue = value as RadioCard?;
                                });
                              },
                            ),
                            const Text('4枚')
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: RadioCard.five,
                              groupValue: cardValue,
                              onChanged: (value) {
                                setState(() {
                                  cardValue = value as RadioCard?;
                                });
                              },
                            ),
                            const Text('5枚')
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: RadioCard.six,
                              groupValue: cardValue,
                              onChanged: (value) {
                                setState(() {
                                  cardValue = value as RadioCard?;
                                });
                              },
                            ),
                            const Text('6枚')
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: RadioCard.eight,
                              groupValue: cardValue,
                              onChanged: (value) {
                                setState(() {
                                  cardValue = value as RadioCard?;
                                });
                              },
                            ),
                            const Text('8枚')
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: RadioCard.nine,
                              groupValue: cardValue,
                              onChanged: (value) {
                                setState(() {
                                  cardValue = value as RadioCard?;
                                });
                              },
                            ),
                            const Text('9枚')
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              value: RadioCard.ten,
                              groupValue: cardValue,
                              onChanged: (value) {
                                setState(() {
                                  cardValue = value as RadioCard?;
                                });
                              },
                            ),
                            const Text('10枚')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  switch (cardValue) {
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

                  if (maxCardNum < numberOfCards) {
                    showDialog<void>(
                        context: context,
                        builder: (_) {
                          return const LessdataAlertPic();
                        });
                    setState(() {});
                  } else {
                    setDispPics();
                    dispPics.shuffle();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DispCards(),
                        )).then((value) {
                      resetToggles();
                      setState(() {});
                    });
                  }
                },
                child: const Text(
                  "表示",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  resetToggles() {
    for (int i = 0; i < 15; i++) {
      selectTools1[i] = false;
      selectTools2[i] = false;
      selectPerson1[i] = false;
      selectPerson2[i] = false;
      selectLives1[i] = false;
      selectLives2[i] = false;
      selectFoods1[i] = false;
      selectFoods2[i] = false;
      selectFoods3[i] = false;
      selectFoods4[i] = false;
      selectRides[i] = false;
      selectEtcs[i] = false;
    }
    cardValue = RadioCard.one;
    maxCardNum = 0;
  }

  toggleButtonSet(List<bool> selectItems, List<Widget> tools) {
    tools1Str[0];
    return ToggleButtons(
      direction: vertical ? Axis.vertical : Axis.vertical,
      onPressed: (int index) {
        // All buttons are selectable.
        setState(() {
          selectItems[index] = !selectItems[index];
        });
        countMaxCardNum();
      },
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      selectedBorderColor: Colors.black,
      selectedColor: Colors.black,
      fillColor: Colors.yellow[300],
      color: Colors.black,
      constraints: const BoxConstraints(
        minHeight: 40.0,
        minWidth: 80.0,
      ),
      isSelected: selectItems,
      children: tools,
    );
  }

  void countMaxCardNum() {
    maxCardNum = 0;
    int number = 0;

    for (int i = 0; i < 15; i++) {
      if (selectTools1[i] == true) {
        number++;
      }
      if (selectTools2[i] == true) {
        number++;
      }
      if (selectPerson1[i] == true) {
        number++;
      }
      if (selectPerson2[i] == true) {
        number++;
      }
      if (selectLives1[i] == true) {
        number++;
      }
      if (selectLives2[i] == true) {
        number++;
      }
      if (selectFoods1[i] == true) {
        number++;
      }
      if (selectFoods2[i] == true) {
        number++;
      }
      if (selectFoods3[i] == true) {
        number++;
      }
      if (selectFoods4[i] == true) {
        number++;
      }
      if (selectRides[i] == true) {
        number++;
      }
      if (selectEtcs[i] == true) {
        number++;
      }
    }
    maxCardNum = number;
  }

  void setDispPics() {
    dispPics = [];
    maxCardNum = 0;
    int number = 0;

    for (int i = 0; i < 15; i++) {
      if (selectTools1[i] == true) {
        dispPics.add('images/${tools1File[i]}');
        number++;
      }
    }
    for (int i = 0; i < 15; i++) {
      if (selectTools2[i] == true) {
        dispPics.add('images/${tools2File[i]}');
        number++;
      }
    }
    for (int i = 0; i < 15; i++) {
      if (selectPerson1[i] == true) {
        dispPics.add('images/${person1File[i]}');
        number++;
      }
    }
    for (int i = 0; i < 15; i++) {
      if (selectPerson2[i] == true) {
        dispPics.add('images/${person2File[i]}');
        number++;
      }
    }
    for (int i = 0; i < 15; i++) {
      if (selectLives1[i] == true) {
        dispPics.add('images/${lives1File[i]}');
        number++;
      }
    }
    for (int i = 0; i < 15; i++) {
      if (selectLives2[i] == true) {
        dispPics.add('images/${lives2File[i]}');
        number++;
      }
    }
    for (int i = 0; i < 15; i++) {
      if (selectFoods1[i] == true) {
        dispPics.add('images/${foods1File[i]}');
        number++;
      }
    }
    for (int i = 0; i < 15; i++) {
      if (selectFoods2[i] == true) {
        dispPics.add('images/${foods2File[i]}');
        number++;
      }
    }
    for (int i = 0; i < 15; i++) {
      if (selectFoods3[i] == true) {
        dispPics.add('images/${foods3File[i]}');
        number++;
      }
    }
    for (int i = 0; i < 15; i++) {
      if (selectFoods4[i] == true) {
        dispPics.add('images/${foods4File[i]}');
        number++;
      }
    }
    for (int i = 0; i < 15; i++) {
      if (selectRides[i] == true) {
        dispPics.add('images/${ridesFile[i]}');
        number++;
      }
    }
    for (int i = 0; i < 15; i++) {
      if (selectEtcs[i] == true) {
        dispPics.add('images/${etcsFile[i]}');
        number++;
      }
    }
    maxCardNum = number;
//    print(dispPics);
  }
}

class LessdataAlertPic extends StatelessWidget {
  const LessdataAlertPic({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('1ページあたりの単語数が不足しています'),
      actions: <Widget>[
        /*      GestureDetector(
          child: Text('いいえ'),
          onTap: () {
            Navigator.pop(context);
          },
        ),*/
        GestureDetector(
          child: const Text('戻る'),
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}

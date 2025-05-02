import 'package:flutter/material.dart';

class QuizQuestion {
  final String question;
  final List<String> answers;
  final int correctIndex;
  final int level;

  QuizQuestion({
    required this.question,
    required this.answers,
    required this.correctIndex,
    required this.level,
  });
}

class QuizData {
  static final List<QuizQuestion> _questions = [
    // レベル1: イミッシュ (基本的な知識)
    // 1. 暦の基本単位に関する問題 (20問)
    QuizQuestion(
      question: 'マヤ暦の1日を表す単位は何ですか？',
      answers: ['キン', 'ウィナル', 'トゥン', 'バクトゥン'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の20日を表す単位は何ですか？',
      answers: ['キン', 'ウィナル', 'トゥン', 'バクトゥン'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の360日を表す単位は何ですか？',
      answers: ['キン', 'ウィナル', 'トゥン', 'バクトゥン'],
      correctIndex: 2,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の7200日を表す単位は何ですか？',
      answers: ['キン', 'ウィナル', 'トゥン', 'バクトゥン'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'キンは何日を表しますか？',
      answers: ['1日', '20日', '360日', '7200日'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'ウィナルは何日を表しますか？',
      answers: ['1日', '20日', '360日', '7200日'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'トゥンは何日を表しますか？',
      answers: ['1日', '20日', '360日', '7200日'],
      correctIndex: 2,
      level: 1,
    ),
    QuizQuestion(
      question: 'バクトゥンは何日を表しますか？',
      answers: ['1日', '20日', '360日', '7200日'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: '1ウィナルは何キンですか？',
      answers: ['1キン', '20キン', '360キン', '7200キン'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: '1トゥンは何ウィナルですか？',
      answers: ['1ウィナル', '18ウィナル', '20ウィナル', '24ウィナル'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: '1バクトゥンは何トゥンですか？',
      answers: ['1トゥン', '18トゥン', '20トゥン', '24トゥン'],
      correctIndex: 2,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の最小単位は何ですか？',
      answers: ['キン', 'ウィナル', 'トゥン', 'バクトゥン'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の最大単位は何ですか？',
      answers: ['キン', 'ウィナル', 'トゥン', 'バクトゥン'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の単位の順番は？',
      answers: [
        'キン→ウィナル→トゥン→バクトゥン',
        'ウィナル→キン→トゥン→バクトゥン',
        'トゥン→キン→ウィナル→バクトゥン',
        'バクトゥン→トゥン→ウィナル→キン'
      ],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: '1トゥンは何キンですか？',
      answers: ['20キン', '360キン', '7200キン', '144000キン'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: '1バクトゥンは何キンですか？',
      answers: ['360キン', '7200キン', '144000キン', '2880000キン'],
      correctIndex: 2,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の単位で、1より大きい最小の単位は？',
      answers: ['キン', 'ウィナル', 'トゥン', 'バクトゥン'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の単位で、1年より大きい最小の単位は？',
      answers: ['キン', 'ウィナル', 'トゥン', 'バクトゥン'],
      correctIndex: 2,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の単位で、10年より大きい最小の単位は？',
      answers: ['キン', 'ウィナル', 'トゥン', 'バクトゥン'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の単位で、1日より小さい単位は？',
      answers: ['キン', 'ウィナル', 'トゥン', 'バクトゥン'],
      correctIndex: 0,
      level: 1,
    ),

    // 2. 暦の種類に関する問題 (20問)
    QuizQuestion(
      question: 'マヤ暦の基本的な暦の種類は？',
      answers: ['太陽暦と太陰暦', 'ツォルキン暦とハアブ暦', 'グレゴリオ暦とユリウス暦', '太陰太陽暦と太陽暦'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の周期は何日ですか？',
      answers: ['180日', '260日', '360日', '365日'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'ハアブ暦の1年は何日ですか？',
      answers: ['360日', '365日', '366日', '400日'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'ツォルキン暦は何を基準にしていますか？',
      answers: ['太陽の動き', '月の動き', '金星の動き', '神聖な周期'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'ハアブ暦は何を基準にしていますか？',
      answers: ['太陽の動き', '月の動き', '金星の動き', '神聖な周期'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の1ヶ月は何日ですか？',
      answers: ['13日', '20日', '30日', '31日'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'ハアブ暦の1ヶ月は何日ですか？',
      answers: ['18日', '20日', '30日', '31日'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の1年は何ヶ月ですか？',
      answers: ['12ヶ月', '13ヶ月', '18ヶ月', '20ヶ月'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'ハアブ暦の1年は何ヶ月ですか？',
      answers: ['12ヶ月', '18ヶ月', '20ヶ月', '24ヶ月'],
      correctIndex: 2,
      level: 1,
    ),
    QuizQuestion(
      question: 'ツォルキン暦とハアブ暦の組み合わせ周期は何年ですか？',
      answers: ['18年', '52年', '72年', '104年'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の日付を表す数字の範囲は？',
      answers: ['1-13', '1-20', '1-30', '1-365'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'ハアブ暦の日付を表す数字の範囲は？',
      answers: ['1-13', '1-20', '1-30', '1-365'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の日付を表す印の数は？',
      answers: ['13個', '20個', '30個', '365個'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'ハアブ暦の日付を表す印の数は？',
      answers: ['13個', '18個', '20個', '24個'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の日付を表す印の種類は？',
      answers: ['動物', '植物', '鉱物', '自然現象'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'ハアブ暦の日付を表す印の種類は？',
      answers: ['動物', '植物', '鉱物', '自然現象'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の日付を表す印の色は？',
      answers: ['赤', '青', '黄', '緑'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'ハアブ暦の日付を表す印の色は？',
      answers: ['赤', '青', '黄', '緑'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の日付を表す印の形は？',
      answers: ['円形', '四角形', '三角形', '星形'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'ハアブ暦の日付を表す印の形は？',
      answers: ['円形', '四角形', '三角形', '星形'],
      correctIndex: 0,
      level: 1,
    ),

    // 3. 日付の表記に関する問題 (20問)
    QuizQuestion(
      question: 'マヤ暦の日付を表す数字の範囲は？',
      answers: ['1-13', '1-20', '1-30', '1-365'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の数は？',
      answers: ['13個', '20個', '30個', '365個'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の種類は？',
      answers: ['動物', '植物', '鉱物', '自然現象'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の色は？',
      answers: ['赤', '青', '黄', '緑'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の形は？',
      answers: ['円形', '四角形', '三角形', '星形'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の大きさは？',
      answers: ['小さい', '中くらい', '大きい', '様々'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の位置は？',
      answers: ['上', '下', '左', '右'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の数は？',
      answers: ['1個', '2個', '3個', '4個'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の種類は？',
      answers: ['動物', '植物', '鉱物', '自然現象'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の色は？',
      answers: ['赤', '青', '黄', '緑'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の形は？',
      answers: ['円形', '四角形', '三角形', '星形'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の大きさは？',
      answers: ['小さい', '中くらい', '大きい', '様々'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の位置は？',
      answers: ['上', '下', '左', '右'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の数は？',
      answers: ['1個', '2個', '3個', '4個'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の種類は？',
      answers: ['動物', '植物', '鉱物', '自然現象'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の色は？',
      answers: ['赤', '青', '黄', '緑'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の形は？',
      answers: ['円形', '四角形', '三角形', '星形'],
      correctIndex: 0,
      level: 1,
    ),

    // 4. マヤ暦の歴史に関する問題 (20問)
    QuizQuestion(
      question: 'マヤ暦が作られたのはいつ頃ですか？',
      answers: ['紀元前1000年頃', '紀元前500年頃', '紀元前200年頃', '紀元後200年頃'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦を作ったのはどの文明ですか？',
      answers: ['アステカ文明', 'マヤ文明', 'インカ文明', 'オルメカ文明'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が使われていた地域は？',
      answers: ['北アメリカ', '中央アメリカ', '南アメリカ', 'カリブ海地域'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が使われていた時代は？',
      answers: ['古典期', '後古典期', '植民地期', '現代'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた目的は？',
      answers: ['農業のため', '宗教のため', '政治のため', '天文学のため'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた場所は？',
      answers: ['テオティワカン', 'チチェン・イッツァ', 'パレンケ', 'コパン'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の王は？',
      answers: ['パカル王', 'ヤシュ・パサフ王', 'カック・ティリウ王', 'ヤシュ・チャン王'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の都市は？',
      answers: ['テオティワカン', 'チチェン・イッツァ', 'パレンケ', 'コパン'],
      correctIndex: 2,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の文化は？',
      answers: ['アステカ文化', 'マヤ文化', 'インカ文化', 'オルメカ文化'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の宗教は？',
      answers: ['キリスト教', 'イスラム教', '仏教', 'マヤ宗教'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の言語は？',
      answers: ['ナワトル語', 'マヤ語', 'ケチュア語', 'アイマラ語'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の文字は？',
      answers: ['アステカ文字', 'マヤ文字', 'インカ文字', 'オルメカ文字'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の建築は？',
      answers: ['アステカ建築', 'マヤ建築', 'インカ建築', 'オルメカ建築'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の芸術は？',
      answers: ['アステカ芸術', 'マヤ芸術', 'インカ芸術', 'オルメカ芸術'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の科学は？',
      answers: ['アステカ科学', 'マヤ科学', 'インカ科学', 'オルメカ科学'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の技術は？',
      answers: ['アステカ技術', 'マヤ技術', 'インカ技術', 'オルメカ技術'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の経済は？',
      answers: ['アステカ経済', 'マヤ経済', 'インカ経済', 'オルメカ経済'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の社会は？',
      answers: ['アステカ社会', 'マヤ社会', 'インカ社会', 'オルメカ社会'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦が作られた時代の政治は？',
      answers: ['アステカ政治', 'マヤ政治', 'インカ政治', 'オルメカ政治'],
      correctIndex: 1,
      level: 1,
    ),

    // 5. マヤ暦の特徴に関する問題 (20問)
    QuizQuestion(
      question: 'マヤ暦の特徴は？',
      answers: ['太陽暦', '太陰暦', '太陽太陰暦', '神聖暦'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の周期は？',
      answers: ['1年', '52年', '260年', '520年'],
      correctIndex: 1,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の表記方法は？',
      answers: ['数字', '文字', '記号', '絵文字'],
      correctIndex: 2,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の読み方は？',
      answers: ['左から右', '右から左', '上から下', '下から上'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の書き方は？',
      answers: ['左から右', '右から左', '上から下', '下から上'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の並び方は？',
      answers: ['横並び', '縦並び', '斜め並び', '円形並び'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の色は？',
      answers: ['赤', '青', '黄', '緑'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の形は？',
      answers: ['円形', '四角形', '三角形', '星形'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の大きさは？',
      answers: ['小さい', '中くらい', '大きい', '様々'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の位置は？',
      answers: ['上', '下', '左', '右'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の数は？',
      answers: ['1個', '2個', '3個', '4個'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の種類は？',
      answers: ['動物', '植物', '鉱物', '自然現象'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の色は？',
      answers: ['赤', '青', '黄', '緑'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の形は？',
      answers: ['円形', '四角形', '三角形', '星形'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の大きさは？',
      answers: ['小さい', '中くらい', '大きい', '様々'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の位置は？',
      answers: ['上', '下', '左', '右'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の数は？',
      answers: ['1個', '2個', '3個', '4個'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の種類は？',
      answers: ['動物', '植物', '鉱物', '自然現象'],
      correctIndex: 3,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の色は？',
      answers: ['赤', '青', '黄', '緑'],
      correctIndex: 0,
      level: 1,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の形は？',
      answers: ['円形', '四角形', '三角形', '星形'],
      correctIndex: 0,
      level: 1,
    ),

    // レベル2（イク）の問題
    QuizQuestion(
      question: 'ツォルキン暦の周期は何日ですか？',
      answers: ['260日', '365日', '360日', '400日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ハアブ暦の1年は何日で構成されていますか？',
      answers: ['365日', '360日', '260日', '400日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦で使用される数字の範囲は？',
      answers: ['1から13', '1から20', '1から30', '1から40'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ハアブ暦の1ヶ月は何日ですか？',
      answers: ['20日', '30日', '28日', '31日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「キン」は何日を表しますか？',
      answers: ['1日', '20日', '360日', '7,200日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「ウィナル」は何日を表しますか？',
      answers: ['20日', '1日', '360日', '7,200日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「トゥン」は何日を表しますか？',
      answers: ['360日', '1日', '20日', '7,200日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「カトゥン」は何日を表しますか？',
      answers: ['7,200日', '360日', '20日', '144,000日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「バクトゥン」は何日を表しますか？',
      answers: ['144,000日', '7,200日', '360日', '20日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ハアブ暦の1年は何ヶ月で構成されていますか？',
      answers: ['18ヶ月', '12ヶ月', '13ヶ月', '20ヶ月'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ハアブ暦の「ウェイェブ」は何日間の期間ですか？',
      answers: ['5日', '10日', '15日', '20日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦で使用される日の印は何種類ありますか？',
      answers: ['20種類', '13種類', '18種類', '12種類'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付は何の組み合わせで表されますか？',
      answers: ['数字と日の印', '数字と色', '日の印と色', '数字と形'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日の印の色は何色ありますか？',
      answers: ['4色', '3色', '5色', '6色'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日の印の形は何種類ありますか？',
      answers: ['4種類', '3種類', '5種類', '6種類'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の1ヶ月は何日ですか？',
      answers: ['20日', '13日', '30日', '31日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ハアブ暦の1ヶ月は何日ですか？',
      answers: ['20日', '30日', '28日', '31日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の1年は何ヶ月ですか？',
      answers: ['13ヶ月', '12ヶ月', '18ヶ月', '20ヶ月'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ハアブ暦の1年は何ヶ月ですか？',
      answers: ['18ヶ月', '12ヶ月', '13ヶ月', '20ヶ月'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦とハアブ暦の組み合わせ周期は何年ですか？',
      answers: ['52年', '18年', '72年', '104年'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の日付を表す数字の範囲は？',
      answers: ['1-13', '1-20', '1-30', '1-365'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ハアブ暦の日付を表す数字の範囲は？',
      answers: ['1-20', '1-13', '1-30', '1-365'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の日付を表す印の数は？',
      answers: ['20個', '13個', '30個', '365個'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ハアブ暦の日付を表す印の数は？',
      answers: ['18個', '13個', '20個', '24個'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の日付を表す印の種類は？',
      answers: ['自然現象', '動物', '植物', '鉱物'],
      correctIndex: 0,
      level: 2,
    ),

    // 2. 時間の単位に関する問題 (20問)
    QuizQuestion(
      question: 'マヤ暦の「キン」は何日を表しますか？',
      answers: ['1日', '20日', '360日', '7,200日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「ウィナル」は何日を表しますか？',
      answers: ['20日', '1日', '360日', '7,200日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「トゥン」は何日を表しますか？',
      answers: ['360日', '1日', '20日', '7,200日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「カトゥン」は何日を表しますか？',
      answers: ['7,200日', '360日', '20日', '144,000日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「バクトゥン」は何日を表しますか？',
      answers: ['144,000日', '7,200日', '360日', '20日'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: '1ウィナルは何キンですか？',
      answers: ['20キン', '1キン', '360キン', '7,200キン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: '1トゥンは何ウィナルですか？',
      answers: ['18ウィナル', '1ウィナル', '20ウィナル', '24ウィナル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: '1カトゥンは何トゥンですか？',
      answers: ['20トゥン', '1トゥン', '18トゥン', '24トゥン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: '1バクトゥンは何カトゥンですか？',
      answers: ['20カトゥン', '1カトゥン', '18カトゥン', '24カトゥン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の最小単位は何ですか？',
      answers: ['キン', 'ウィナル', 'トゥン', 'バクトゥン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の最大単位は何ですか？',
      answers: ['バクトゥン', 'キン', 'ウィナル', 'トゥン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の単位の順番は？',
      answers: [
        'キン→ウィナル→トゥン→カトゥン→バクトゥン',
        'ウィナル→キン→トゥン→カトゥン→バクトゥン',
        'トゥン→キン→ウィナル→カトゥン→バクトゥン',
        'バクトゥン→トゥン→ウィナル→キン→カトゥン'
      ],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: '1トゥンは何キンですか？',
      answers: ['360キン', '20キン', '7,200キン', '144,000キン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: '1カトゥンは何キンですか？',
      answers: ['7,200キン', '360キン', '144,000キン', '2,880,000キン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: '1バクトゥンは何キンですか？',
      answers: ['144,000キン', '7,200キン', '360キン', '2,880,000キン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の単位で、1より大きい最小の単位は？',
      answers: ['ウィナル', 'キン', 'トゥン', 'バクトゥン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の単位で、1年より大きい最小の単位は？',
      answers: ['トゥン', 'キン', 'ウィナル', 'バクトゥン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の単位で、10年より大きい最小の単位は？',
      answers: ['カトゥン', 'キン', 'ウィナル', 'トゥン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の単位で、100年より大きい最小の単位は？',
      answers: ['バクトゥン', 'キン', 'ウィナル', 'トゥン'],
      correctIndex: 0,
      level: 2,
    ),

    // 3. 暦の特徴に関する問題 (20問)
    QuizQuestion(
      question: 'マヤ暦の特徴は？',
      answers: ['神聖暦', '太陽暦', '太陰暦', '太陽太陰暦'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の周期は？',
      answers: ['52年', '1年', '260年', '520年'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の表記方法は？',
      answers: ['記号', '数字', '文字', '絵文字'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の読み方は？',
      answers: ['左から右', '右から左', '上から下', '下から上'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の書き方は？',
      answers: ['左から右', '右から左', '上から下', '下から上'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の並び方は？',
      answers: ['横並び', '縦並び', '斜め並び', '円形並び'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の色は？',
      answers: ['赤', '青', '黄', '緑'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の形は？',
      answers: ['円形', '四角形', '三角形', '星形'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の大きさは？',
      answers: ['様々', '小さい', '中くらい', '大きい'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の位置は？',
      answers: ['上', '下', '左', '右'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の数は？',
      answers: ['1個', '2個', '3個', '4個'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の種類は？',
      answers: ['自然現象', '動物', '植物', '鉱物'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付の色は？',
      answers: ['赤', '青', '黄', '緑'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の形は？',
      answers: ['円形', '四角形', '三角形', '星形'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の大きさは？',
      answers: ['様々', '小さい', '中くらい', '大きい'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の位置は？',
      answers: ['上', '下', '左', '右'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の数は？',
      answers: ['1個', '2個', '3個', '4個'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の種類は？',
      answers: ['自然現象', '動物', '植物', '鉱物'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の色は？',
      answers: ['赤', '青', '黄', '緑'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付を表す印の形は？',
      answers: ['円形', '四角形', '三角形', '星形'],
      correctIndex: 0,
      level: 2,
    ),

    // 4. 暦の計算に関する問題 (20問)
    QuizQuestion(
      question: 'ツォルキン暦の1日目は何と呼ばれますか？',
      answers: ['イミッシュ', 'イク', 'アクバル', 'カン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の2日目は何と呼ばれますか？',
      answers: ['イク', 'イミッシュ', 'アクバル', 'カン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の3日目は何と呼ばれますか？',
      answers: ['アクバル', 'イミッシュ', 'イク', 'カン'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の4日目は何と呼ばれますか？',
      answers: ['カン', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の5日目は何と呼ばれますか？',
      answers: ['チッカン', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の6日目は何と呼ばれますか？',
      answers: ['キミ', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の7日目は何と呼ばれますか？',
      answers: ['マニク', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の8日目は何と呼ばれますか？',
      answers: ['ラマト', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の9日目は何と呼ばれますか？',
      answers: ['ムルク', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の10日目は何と呼ばれますか？',
      answers: ['オク', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の11日目は何と呼ばれますか？',
      answers: ['チュエン', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の12日目は何と呼ばれますか？',
      answers: ['エブ', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の13日目は何と呼ばれますか？',
      answers: ['ベン', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の14日目は何と呼ばれますか？',
      answers: ['イシュ', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の15日目は何と呼ばれますか？',
      answers: ['メン', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の16日目は何と呼ばれますか？',
      answers: ['キブ', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の17日目は何と呼ばれますか？',
      answers: ['カバン', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の18日目は何と呼ばれますか？',
      answers: ['エツナブ', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の19日目は何と呼ばれますか？',
      answers: ['カウアク', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の20日目は何と呼ばれますか？',
      answers: ['アハウ', 'イミッシュ', 'イク', 'アクバル'],
      correctIndex: 0,
      level: 2,
    ),

    // 5. 暦の意味に関する問題 (20問)
    QuizQuestion(
      question: 'マヤ暦の「キン」は何を意味しますか？',
      answers: ['太陽', '月', '星', '地球'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「ウィナル」は何を意味しますか？',
      answers: ['月', '太陽', '星', '地球'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「トゥン」は何を意味しますか？',
      answers: ['年', '月', '日', '週'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「カトゥン」は何を意味しますか？',
      answers: ['20年', '1年', '5年', '10年'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マヤ暦の「バクトゥン」は何を意味しますか？',
      answers: ['400年', '20年', '100年', '200年'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'イミッシュは何を意味しますか？',
      answers: ['ワニ', '風', '夜', '蛇'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'イクは何を意味しますか？',
      answers: ['風', 'ワニ', '夜', '蛇'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'アクバルは何を意味しますか？',
      answers: ['夜', 'ワニ', '風', '蛇'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'カンは何を意味しますか？',
      answers: ['蛇', 'ワニ', '風', '夜'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'チッカンは何を意味しますか？',
      answers: ['死', 'ワニ', '風', '夜'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'キミは何を意味しますか？',
      answers: ['鹿', 'ワニ', '風', '夜'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'マニクは何を意味しますか？',
      answers: ['猿', 'ワニ', '風', '夜'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ラマトは何を意味しますか？',
      answers: ['星', 'ワニ', '風', '夜'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ムルクは何を意味しますか？',
      answers: ['犬', 'ワニ', '風', '夜'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'オクは何を意味しますか？',
      answers: ['家', 'ワニ', '風', '夜'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'チュエンは何を意味しますか？',
      answers: ['猿', 'ワニ', '風', '夜'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'エブは何を意味しますか？',
      answers: ['道', 'ワニ', '風', '夜'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'ベンは何を意味しますか？',
      answers: ['葦', 'ワニ', '風', '夜'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'イシュは何を意味しますか？',
      answers: ['虎', 'ワニ', '風', '夜'],
      correctIndex: 0,
      level: 2,
    ),
    QuizQuestion(
      question: 'メンは何を意味しますか？',
      answers: ['鷲', 'ワニ', '風', '夜'],
      correctIndex: 0,
      level: 2,
    ),

    // レベル3（アクバル）の問題
    // 1. マヤ暦の深い理解に関する問題（20問）
    QuizQuestion(
      question: 'ツォルキン暦とハアブ暦が一致する周期を何と呼びますか？',
      answers: ['カレンダーラウンド', 'マヤサイクル', 'グレートサイクル', 'ロングカウント'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'カレンダーラウンドは何年周期ですか？',
      answers: ['52年', '20年', '13年', '365年'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'ハアブ暦の最後の5日間を何と呼びますか？',
      answers: ['ウェイェブ', 'ウィナル', 'トゥン', 'カトゥン'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'ウェイェブ期間はどのような意味を持ちますか？',
      answers: ['年の転換期', '豊穣の時期', '戦いの時期', '祭りの時期'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'ツォルキン暦の260日という周期は何に基づいていますか？',
      answers: ['人の妊娠期間', '太陽の周期', '月の周期', '惑星の周期'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間」の概念は何を表していますか？',
      answers: ['螺旋的な循環', '直線的な進行', '停滞的な状態', 'ランダムな変化'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦における「運命の書」とは何ですか？',
      answers: ['ツォルキン暦', 'ハアブ暦', 'ロングカウント', 'ショートカウント'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦の日付表記で最も重要な要素は何ですか？',
      answers: ['日の印と数字の組み合わせ', '月の位置', '年の位置', '季節の変化'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の質」とは何を指しますか？',
      answers: ['各日のエネルギーの特性', '時間の長さ', '暦の周期', '季節の変化'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦において「同じ日」が巡ってくる周期は何年ですか？',
      answers: ['52年', '20年', '13年', '260年'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦における「完全な周期」とは何を指しますか？',
      answers: ['ツォルキン暦とハアブ暦の一致', 'ロングカウントの完了', '1年の完了', '1ヶ月の完了'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦において最も神聖とされる数字は何ですか？',
      answers: ['13', '20', '52', '365'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の流れ」の特徴は何ですか？',
      answers: ['循環的', '直線的', '停滞的', 'ランダム'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦において「エネルギーの強さ」を表すのは何ですか？',
      answers: ['数字（1-13）', '日の印', '月の位置', '年の位置'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦において「エネルギーの質」を表すのは何ですか？',
      answers: ['日の印', '数字（1-13）', '月の位置', '年の位置'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦における「完全性」を表す数字は何ですか？',
      answers: ['13', '20', '4', '5'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦における「方位」を表す数字は何ですか？',
      answers: ['4', '13', '20', '5'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦における「中心」を表す数字は何ですか？',
      answers: ['5', '4', '13', '20'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦における「完全な周期」の日数は何日ですか？',
      answers: ['18,980日', '260日', '365日', '7,200日'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦において「宇宙の秩序」を表す数字は何ですか？',
      answers: ['4', '13', '20', '5'],
      correctIndex: 0,
      level: 3,
    ),

    // 2. 守護霊の深い理解に関する問題（20問）
    QuizQuestion(
      question: '守護霊（ナワル）の力が最も強く現れる時期は？',
      answers: ['誕生日', '満月', '新月', '冬至'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「補助的な力」は何によって決まりますか？',
      answers: ['誕生時刻', '誕生場所', '名前', '血液型'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「相性」を判断する際に最も重要な要素は？',
      answers: ['日の印の性質', '数字の組み合わせ', '誕生月', '誕生年'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「元素的な性質」は何を表しますか？',
      answers: ['基本的な性格特性', '運勢', '健康状態', '社会的地位'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「方位との関係」で最も重要なのは？',
      answers: ['東西南北の特性', '上下の位置', '左右の位置', '中心との距離'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「色彩的な特性」は何を表しますか？',
      answers: ['エネルギーの質', '運勢の強さ', '相性の良さ', '健康状態'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「動物的な特性」は何を示しますか？',
      answers: ['行動様式', '性格', '運勢', '健康'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'マヤ暦における「進化の力」は何を表しますか？',
      answers: ['エネルギーの進化と変容', '時間の進化と変容', '空間の進化と変容', '物質の進化と変容'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「植物的な特性」は何と関係がありますか？',
      answers: ['成長の過程', '運勢', '相性', '健康'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「鉱物的な特性」は何を表しますか？',
      answers: ['内面的な強さ', '外見的な特徴', '社会的地位', '経済力'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「音楽的な特性」は何と関係がありますか？',
      answers: ['振動のエネルギー', '趣味', '才能', '性格'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「数字的な特性」は何を示しますか？',
      answers: ['エネルギーの強さ', '運勢', '相性', '健康'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「時間的な特性」は何と関係がありますか？',
      answers: ['活動の最適時期', '寿命', '運勢の周期', '成長の速度'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「空間的な特性」は何を表しますか？',
      answers: ['活動の最適場所', '住環境', '旅行先', '仕事場'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「感情的な特性」は何と関係がありますか？',
      answers: ['心の動き', '性格', '運勢', '相性'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「知性的な特性」は何を示しますか？',
      answers: ['学びの方向性', '知能指数', '学歴', '職業適性'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「社会的な特性」は何と関係がありますか？',
      answers: ['人間関係の傾向', '社会的地位', '経済力', '名声'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「精神的な特性」は何を表しますか？',
      answers: ['魂の成長方向', '性格', '運勢', '相性'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「物質的な特性」は何と関係がありますか？',
      answers: ['現実世界での表現', '財産', '所有物', '経済力'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「創造的な特性」は何を示しますか？',
      answers: ['表現の方向性', '芸術性', '創造力', '想像力'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '守護霊の「変容的な特性」は何と関係がありますか？',
      answers: ['成長の過程', '変化の速度', '運勢の変化', '相性の変化'],
      correctIndex: 0,
      level: 3,
    ),

    // 3. マヤ暦の予言と予測に関する問題（20問）
    QuizQuestion(
      question: 'マヤ暦の予言で最も重要な周期は？',
      answers: ['バクトゥン', 'カトゥン', 'トゥン', 'ウィナル'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '13バクトゥンの終わりは何を意味しますか？',
      answers: ['新しい時代の始まり', '世界の終わり', '大災害', '戦争の時代'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'カトゥン予言は何年周期で行われますか？',
      answers: ['20年', '13年', '52年', '400年'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: 'チラム・バラムの予言書は何について書かれていますか？',
      answers: ['時代の変遷', '個人の運命', '自然災害', '戦争の結果'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言者の称号は何と呼ばれましたか？',
      answers: ['チラム', 'アハウ', 'バラム', 'イツァムナー'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言の基準となる暦は？',
      answers: ['ツォルキン暦', 'ハアブ暦', 'グレゴリオ暦', 'ユリウス暦'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言における「変化の時期」は何と呼ばれますか？',
      answers: ['カタン', 'バクタン', 'トゥナル', 'ウィナル'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言の中で「黄金時代」は何と呼ばれますか？',
      answers: ['バクタブ', 'カタン', 'トゥナル', 'ウィナル'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言における「試練の時期」は何と呼ばれますか？',
      answers: ['ウィリャル', 'バクタブ', 'カタン', 'トゥナル'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言の解釈者は何と呼ばれましたか？',
      answers: ['アーキン', 'チラム', 'バラム', 'イツァムナー'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言における「浄化の時期」は何と呼ばれますか？',
      answers: ['サカル', 'ウィリャル', 'バクタブ', 'カタン'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言の記録方法は何と呼ばれましたか？',
      answers: ['コデックス', 'グリフ', 'ステラ', 'アルタル'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言における「再生の時期」は何と呼ばれますか？',
      answers: ['ククルカン', 'サカル', 'ウィリャル', 'バクタブ'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言の伝承者は何と呼ばれましたか？',
      answers: ['ハメン', 'アーキン', 'チラム', 'バラム'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言における「調和の時期」は何と呼ばれますか？',
      answers: ['ヤシュチェ', 'ククルカン', 'サカル', 'ウィリャル'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言の解読方法は何と呼ばれましたか？',
      answers: ['ウーフ', 'コデックス', 'グリフ', 'ステラ'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言における「知恵の時期」は何と呼ばれますか？',
      answers: ['ツィクバル', 'ヤシュチェ', 'ククルカン', 'サカル'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言の保管者は何と呼ばれましたか？',
      answers: ['アーワトック', 'ハメン', 'アーキン', 'チラム'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言における「創造の時期」は何と呼ばれますか？',
      answers: ['イツァムナー', 'ツィクバル', 'ヤシュチェ', 'ククルカン'],
      correctIndex: 0,
      level: 3,
    ),
    QuizQuestion(
      question: '予言の儀式執行者は何と呼ばれましたか？',
      answers: ['アーキナブ', 'アーワトック', 'ハメン', 'アーキン'],
      correctIndex: 0,
      level: 3,
    ),

    // レベル4（カン）の問題
    // 1. マヤ暦のエネルギーに関する問題（20問）
    QuizQuestion(
      question: 'マヤ暦における「エネルギーの流れ」は何を表しますか？',
      answers: ['宇宙のリズム', '時間の進行', '季節の変化', '天体の動き'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「質」を決定する最も重要な要素は？',
      answers: ['日の印の特性', '数字の大きさ', '月の位置', '年の位置'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「強さ」を決定する最も重要な要素は？',
      answers: ['数字（1-13）', '日の印', '月の位置', '年の位置'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「方向性」を決定する最も重要な要素は？',
      answers: ['日の印の性質', '数字の組み合わせ', '月の位置', '年の位置'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「波動」は何を表しますか？',
      answers: ['時間の質', '空間の広がり', '物質の密度', '光の速度'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「共鳴」は何を表しますか？',
      answers: ['調和の度合い', '強さの度合い', '方向の度合い', '速度の度合い'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「変換」は何を表しますか？',
      answers: ['質の変化', '量の変化', '方向の変化', '速度の変化'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「蓄積」は何を表しますか？',
      answers: ['力の集積', '時間の集積', '空間の集積', '物質の集積'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「放出」は何を表しますか？',
      answers: ['力の解放', '時間の解放', '空間の解放', '物質の解放'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「循環」は何を表しますか？',
      answers: ['力の巡り', '時間の巡り', '空間の巡り', '物質の巡り'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「調和」は何を表しますか？',
      answers: ['力の均衡', '時間の均衡', '空間の均衡', '物質の均衡'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「不調和」は何を表しますか？',
      answers: ['力の乱れ', '時間の乱れ', '空間の乱れ', '物質の乱れ'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「創造」は何を表しますか？',
      answers: ['新しい力の誕生', '新しい時間の誕生', '新しい空間の誕生', '新しい物質の誕生'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「破壊」は何を表しますか？',
      answers: ['力の消滅', '時間の消滅', '空間の消滅', '物質の消滅'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「維持」は何を表しますか？',
      answers: ['力の持続', '時間の持続', '空間の持続', '物質の持続'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「変容」は何を表しますか？',
      answers: ['力の変化', '時間の変化', '空間の変化', '物質の変化'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「統合」は何を表しますか？',
      answers: ['力の融合', '時間の融合', '空間の融合', '物質の融合'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「分離」は何を表しますか？',
      answers: ['力の分散', '時間の分散', '空間の分散', '物質の分散'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「拡大」は何を表しますか？',
      answers: ['力の広がり', '時間の広がり', '空間の広がり', '物質の広がり'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'エネルギーの「収縮」は何を表しますか？',
      answers: ['力の凝縮', '時間の凝縮', '空間の凝縮', '物質の凝縮'],
      correctIndex: 0,
      level: 4,
    ),

    // 2. マヤ暦の宇宙観に関する問題（20問）
    QuizQuestion(
      question: 'マヤ暦における「宇宙の中心」は何を表しますか？',
      answers: ['創造の源', '時間の源', '空間の源', '物質の源'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の層」は何を表しますか？',
      answers: ['存在の階層', '時間の階層', '空間の階層', '物質の階層'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の秩序」は何を表しますか？',
      answers: ['調和の法則', '時間の法則', '空間の法則', '物質の法則'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の創造」は何を表しますか？',
      answers: ['存在の始まり', '時間の始まり', '空間の始まり', '物質の始まり'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の維持」は何を表しますか？',
      answers: ['存在の継続', '時間の継続', '空間の継続', '物質の継続'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の変容」は何を表しますか？',
      answers: ['存在の変化', '時間の変化', '空間の変化', '物質の変化'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の統合」は何を表しますか？',
      answers: ['存在の融合', '時間の融合', '空間の融合', '物質の融合'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の分離」は何を表しますか？',
      answers: ['存在の分散', '時間の分散', '空間の分散', '物質の分散'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の拡大」は何を表しますか？',
      answers: ['存在の広がり', '時間の広がり', '空間の広がり', '物質の広がり'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の収縮」は何を表しますか？',
      answers: ['存在の凝縮', '時間の凝縮', '空間の凝縮', '物質の凝縮'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の循環」は何を表しますか？',
      answers: ['存在の巡り', '時間の巡り', '空間の巡り', '物質の巡り'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の調和」は何を表しますか？',
      answers: ['存在の均衡', '時間の均衡', '空間の均衡', '物質の均衡'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の不調和」は何を表しますか？',
      answers: ['存在の乱れ', '時間の乱れ', '空間の乱れ', '物質の乱れ'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の創造」は何を表しますか？',
      answers: ['新しい存在の誕生', '新しい時間の誕生', '新しい空間の誕生', '新しい物質の誕生'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の破壊」は何を表しますか？',
      answers: ['存在の消滅', '時間の消滅', '空間の消滅', '物質の消滅'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の維持」は何を表しますか？',
      answers: ['存在の持続', '時間の持続', '空間の持続', '物質の持続'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の変容」は何を表しますか？',
      answers: ['存在の変化', '時間の変化', '空間の変化', '物質の変化'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の統合」は何を表しますか？',
      answers: ['存在の融合', '時間の融合', '空間の融合', '物質の融合'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「宇宙の分離」は何を表しますか？',
      answers: ['存在の分散', '時間の分散', '空間の分散', '物質の分散'],
      correctIndex: 0,
      level: 4,
    ),

    // 3. マヤ暦の時間観に関する問題（20問）
    QuizQuestion(
      question: 'マヤ暦における「時間の質」は何を表しますか？',
      answers: ['エネルギーの特性', '空間の特性', '物質の特性', '光の特性'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の流れ」は何を表しますか？',
      answers: ['エネルギーの動き', '空間の動き', '物質の動き', '光の動き'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の方向」は何を表しますか？',
      answers: ['エネルギーの向き', '空間の向き', '物質の向き', '光の向き'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の強さ」は何を表しますか？',
      answers: ['エネルギーの強度', '空間の強度', '物質の強度', '光の強度'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の質」は何を表しますか？',
      answers: ['エネルギーの特性', '空間の特性', '物質の特性', '光の特性'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の流れ」は何を表しますか？',
      answers: ['エネルギーの動き', '空間の動き', '物質の動き', '光の動き'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の方向」は何を表しますか？',
      answers: ['エネルギーの向き', '空間の向き', '物質の向き', '光の向き'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の強さ」は何を表しますか？',
      answers: ['エネルギーの強度', '空間の強度', '物質の強度', '光の強度'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の質」は何を表しますか？',
      answers: ['エネルギーの特性', '空間の特性', '物質の特性', '光の特性'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の流れ」は何を表しますか？',
      answers: ['エネルギーの動き', '空間の動き', '物質の動き', '光の動き'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の方向」は何を表しますか？',
      answers: ['エネルギーの向き', '空間の向き', '物質の向き', '光の向き'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の強さ」は何を表しますか？',
      answers: ['エネルギーの強度', '空間の強度', '物質の強度', '光の強度'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の質」は何を表しますか？',
      answers: ['エネルギーの特性', '空間の特性', '物質の特性', '光の特性'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の流れ」は何を表しますか？',
      answers: ['エネルギーの動き', '空間の動き', '物質の動き', '光の動き'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の方向」は何を表しますか？',
      answers: ['エネルギーの向き', '空間の向き', '物質の向き', '光の向き'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の強さ」は何を表しますか？',
      answers: ['エネルギーの強度', '空間の強度', '物質の強度', '光の強度'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の質」は何を表しますか？',
      answers: ['エネルギーの特性', '空間の特性', '物質の特性', '光の特性'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の流れ」は何を表しますか？',
      answers: ['エネルギーの動き', '空間の動き', '物質の動き', '光の動き'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の方向」は何を表しますか？',
      answers: ['エネルギーの向き', '空間の向き', '物質の向き', '光の向き'],
      correctIndex: 0,
      level: 4,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の強さ」は何を表しますか？',
      answers: ['エネルギーの強度', '空間の強度', '物質の強度', '光の強度'],
      correctIndex: 0,
      level: 4,
    ),

    // レベル5（チッカン）の問題
    // 1. マヤ暦の予言と予測に関する問題（20問）
    QuizQuestion(
      question: 'マヤ暦における「予言の精度」は何によって決まりますか？',
      answers: ['エネルギーの読み取り', '時間の計算', '空間の測定', '物質の観察'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予測の信頼性」は何によって決まりますか？',
      answers: ['エネルギーの安定性', '時間の正確性', '空間の広がり', '物質の量'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の範囲」は何によって決まりますか？',
      answers: ['エネルギーの広がり', '時間の長さ', '空間の大きさ', '物質の範囲'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予測の詳細度」は何によって決まりますか？',
      answers: ['エネルギーの細かさ', '時間の細かさ', '空間の細かさ', '物質の細かさ'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の確実性」は何によって決まりますか？',
      answers: ['エネルギーの強さ', '時間の確実性', '空間の確実性', '物質の確実性'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予測の変動性」は何によって決まりますか？',
      answers: ['エネルギーの変化', '時間の変化', '空間の変化', '物質の変化'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の影響力」は何によって決まりますか？',
      answers: ['エネルギーの強度', '時間の影響力', '空間の影響力', '物質の影響力'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予測の持続性」は何によって決まりますか？',
      answers: ['エネルギーの持続', '時間の持続', '空間の持続', '物質の持続'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の普遍性」は何によって決まりますか？',
      answers: ['エネルギーの普遍性', '時間の普遍性', '空間の普遍性', '物質の普遍性'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予測の特殊性」は何によって決まりますか？',
      answers: ['エネルギーの特殊性', '時間の特殊性', '空間の特殊性', '物質の特殊性'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の整合性」は何によって決まりますか？',
      answers: ['エネルギーの整合', '時間の整合', '空間の整合', '物質の整合'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予測の矛盾性」は何によって決まりますか？',
      answers: ['エネルギーの矛盾', '時間の矛盾', '空間の矛盾', '物質の矛盾'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の複雑性」は何によって決まりますか？',
      answers: ['エネルギーの複雑さ', '時間の複雑さ', '空間の複雑さ', '物質の複雑さ'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予測の単純性」は何によって決まりますか？',
      answers: ['エネルギーの単純さ', '時間の単純さ', '空間の単純さ', '物質の単純さ'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の明確性」は何によって決まりますか？',
      answers: ['エネルギーの明確さ', '時間の明確さ', '空間の明確さ', '物質の明確さ'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予測の曖昧性」は何によって決まりますか？',
      answers: ['エネルギーの曖昧さ', '時間の曖昧さ', '空間の曖昧さ', '物質の曖昧さ'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の具体性」は何によって決まりますか？',
      answers: ['エネルギーの具体性', '時間の具体性', '空間の具体性', '物質の具体性'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予測の抽象性」は何によって決まりますか？',
      answers: ['エネルギーの抽象性', '時間の抽象性', '空間の抽象性', '物質の抽象性'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の現実性」は何によって決まりますか？',
      answers: ['エネルギーの現実性', '時間の現実性', '空間の現実性', '物質の現実性'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予測の可能性」は何によって決まりますか？',
      answers: ['エネルギーの可能性', '時間の可能性', '空間の可能性', '物質の可能性'],
      correctIndex: 0,
      level: 5,
    ),

    // 2. マヤ暦の儀式と祭事に関する問題（20問）
    QuizQuestion(
      question: 'マヤ暦における「儀式の重要性」は何によって決まりますか？',
      answers: ['エネルギーの調整', '時間の調整', '空間の調整', '物質の調整'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「祭事の意味」は何によって決まりますか？',
      answers: ['エネルギーの意味', '時間の意味', '空間の意味', '物質の意味'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の効果」は何によって決まりますか？',
      answers: ['エネルギーの効果', '時間の効果', '空間の効果', '物質の効果'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「祭事の影響」は何によって決まりますか？',
      answers: ['エネルギーの影響', '時間の影響', '空間の影響', '物質の影響'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の目的」は何によって決まりますか？',
      answers: ['エネルギーの目的', '時間の目的', '空間の目的', '物質の目的'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「祭事の意義」は何によって決まりますか？',
      answers: ['エネルギーの意義', '時間の意義', '空間の意義', '物質の意義'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の方法」は何によって決まりますか？',
      answers: ['エネルギーの方法', '時間の方法', '空間の方法', '物質の方法'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「祭事の形式」は何によって決まりますか？',
      answers: ['エネルギーの形式', '時間の形式', '空間の形式', '物質の形式'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の準備」は何によって決まりますか？',
      answers: ['エネルギーの準備', '時間の準備', '空間の準備', '物質の準備'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「祭事の進行」は何によって決まりますか？',
      answers: ['エネルギーの進行', '時間の進行', '空間の進行', '物質の進行'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の終了」は何によって決まりますか？',
      answers: ['エネルギーの終了', '時間の終了', '空間の終了', '物質の終了'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「祭事の結果」は何によって決まりますか？',
      answers: ['エネルギーの結果', '時間の結果', '空間の結果', '物質の結果'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の継続」は何によって決まりますか？',
      answers: ['エネルギーの継続', '時間の継続', '空間の継続', '物質の継続'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「祭事の変化」は何によって決まりますか？',
      answers: ['エネルギーの変化', '時間の変化', '空間の変化', '物質の変化'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の調和」は何によって決まりますか？',
      answers: ['エネルギーの調和', '時間の調和', '空間の調和', '物質の調和'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「祭事の不調和」は何によって決まりますか？',
      answers: ['エネルギーの不調和', '時間の不調和', '空間の不調和', '物質の不調和'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の創造」は何によって決まりますか？',
      answers: ['エネルギーの創造', '時間の創造', '空間の創造', '物質の創造'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「祭事の破壊」は何によって決まりますか？',
      answers: ['エネルギーの破壊', '時間の破壊', '空間の破壊', '物質の破壊'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の維持」は何によって決まりますか？',
      answers: ['エネルギーの維持', '時間の維持', '空間の維持', '物質の維持'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「祭事の変容」は何によって決まりますか？',
      answers: ['エネルギーの変容', '時間の変容', '空間の変容', '物質の変容'],
      correctIndex: 0,
      level: 5,
    ),

    // 3. マヤ暦の守護霊と精霊に関する問題（20問）
    QuizQuestion(
      question: 'マヤ暦における「守護霊の役割」は何によって決まりますか？',
      answers: ['エネルギーの役割', '時間の役割', '空間の役割', '物質の役割'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「精霊の性質」は何によって決まりますか？',
      answers: ['エネルギーの性質', '時間の性質', '空間の性質', '物質の性質'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「守護霊の力」は何によって決まりますか？',
      answers: ['エネルギーの力', '時間の力', '空間の力', '物質の力'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「精霊の影響」は何によって決まりますか？',
      answers: ['エネルギーの影響', '時間の影響', '空間の影響', '物質の影響'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「守護霊の存在」は何によって決まりますか？',
      answers: ['エネルギーの存在', '時間の存在', '空間の存在', '物質の存在'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「精霊の現れ」は何によって決まりますか？',
      answers: ['エネルギーの現れ', '時間の現れ', '空間の現れ', '物質の現れ'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「守護霊の働き」は何によって決まりますか？',
      answers: ['エネルギーの働き', '時間の働き', '空間の働き', '物質の働き'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「精霊の動き」は何によって決まりますか？',
      answers: ['エネルギーの動き', '時間の動き', '空間の動き', '物質の動き'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「守護霊の声」は何によって決まりますか？',
      answers: ['エネルギーの声', '時間の声', '空間の声', '物質の声'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「精霊の言葉」は何によって決まりますか？',
      answers: ['エネルギーの言葉', '時間の言葉', '空間の言葉', '物質の言葉'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「守護霊の導き」は何によって決まりますか？',
      answers: ['エネルギーの導き', '時間の導き', '空間の導き', '物質の導き'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「精霊の教え」は何によって決まりますか？',
      answers: ['エネルギーの教え', '時間の教え', '空間の教え', '物質の教え'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「守護霊の保護」は何によって決まりますか？',
      answers: ['エネルギーの保護', '時間の保護', '空間の保護', '物質の保護'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「精霊の守り」は何によって決まりますか？',
      answers: ['エネルギーの守り', '時間の守り', '空間の守り', '物質の守り'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「守護霊の祝福」は何によって決まりますか？',
      answers: ['エネルギーの祝福', '時間の祝福', '空間の祝福', '物質の祝福'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「精霊の恵み」は何によって決まりますか？',
      answers: ['エネルギーの恵み', '時間の恵み', '空間の恵み', '物質の恵み'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「守護霊の警告」は何によって決まりますか？',
      answers: ['エネルギーの警告', '時間の警告', '空間の警告', '物質の警告'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「精霊の注意」は何によって決まりますか？',
      answers: ['エネルギーの注意', '時間の注意', '空間の注意', '物質の注意'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「守護霊の助け」は何によって決まりますか？',
      answers: ['エネルギーの助け', '時間の助け', '空間の助け', '物質の助け'],
      correctIndex: 0,
      level: 5,
    ),
    QuizQuestion(
      question: 'マヤ暦における「精霊の支援」は何によって決まりますか？',
      answers: ['エネルギーの支援', '時間の支援', '空間の支援', '物質の支援'],
      correctIndex: 0,
      level: 5,
    ),

    // レベル6（キミ）の問題
    // 1. マヤ暦の深層理解に関する問題（10問）
    QuizQuestion(
      question: 'マヤ暦における「深層の意味」は何を表しますか？',
      answers: ['エネルギーの本質', '時間の本質', '空間の本質', '物質の本質'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「深層の理解」は何を表しますか？',
      answers: ['エネルギーの理解', '時間の理解', '空間の理解', '物質の理解'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「深層の洞察」は何を表しますか？',
      answers: ['エネルギーの洞察', '時間の洞察', '空間の洞察', '物質の洞察'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「深層の知恵」は何を表しますか？',
      answers: ['エネルギーの知恵', '時間の知恵', '空間の知恵', '物質の知恵'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「深層の真理」は何を表しますか？',
      answers: ['エネルギーの真理', '時間の真理', '空間の真理', '物質の真理'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「深層の法則」は何を表しますか？',
      answers: ['エネルギーの法則', '時間の法則', '空間の法則', '物質の法則'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「深層の原理」は何を表しますか？',
      answers: ['エネルギーの原理', '時間の原理', '空間の原理', '物質の原理'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「深層の構造」は何を表しますか？',
      answers: ['エネルギーの構造', '時間の構造', '空間の構造', '物質の構造'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「深層の関係」は何を表しますか？',
      answers: ['エネルギーの関係', '時間の関係', '空間の関係', '物質の関係'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「深層の調和」は何を表しますか？',
      answers: ['エネルギーの調和', '時間の調和', '空間の調和', '物質の調和'],
      correctIndex: 0,
      level: 6,
    ),

    // 2. マヤ暦の実践と応用に関する問題（10問）
    QuizQuestion(
      question: 'マヤ暦における「実践の方法」は何を表しますか？',
      answers: ['エネルギーの実践', '時間の実践', '空間の実践', '物質の実践'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「応用の技術」は何を表しますか？',
      answers: ['エネルギーの技術', '時間の技術', '空間の技術', '物質の技術'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「実践の効果」は何を表しますか？',
      answers: ['エネルギーの効果', '時間の効果', '空間の効果', '物質の効果'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「応用の結果」は何を表しますか？',
      answers: ['エネルギーの結果', '時間の結果', '空間の結果', '物質の結果'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「実践の目的」は何を表しますか？',
      answers: ['エネルギーの目的', '時間の目的', '空間の目的', '物質の目的'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「応用の意義」は何を表しますか？',
      answers: ['エネルギーの意義', '時間の意義', '空間の意義', '物質の意義'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「実践の継続」は何を表しますか？',
      answers: ['エネルギーの継続', '時間の継続', '空間の継続', '物質の継続'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「応用の発展」は何を表しますか？',
      answers: ['エネルギーの発展', '時間の発展', '空間の発展', '物質の発展'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「実践の変化」は何を表しますか？',
      answers: ['エネルギーの変化', '時間の変化', '空間の変化', '物質の変化'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「応用の進化」は何を表しますか？',
      answers: ['エネルギーの進化', '時間の進化', '空間の進化', '物質の進化'],
      correctIndex: 0,
      level: 6,
    ),

    // 3. マヤ暦の統合と統合に関する問題（10問）
    QuizQuestion(
      question: 'マヤ暦における「統合の方法」は何を表しますか？',
      answers: ['エネルギーの統合', '時間の統合', '空間の統合', '物質の統合'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の技術」は何を表しますか？',
      answers: ['エネルギーの技術', '時間の技術', '空間の技術', '物質の技術'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の効果」は何を表しますか？',
      answers: ['エネルギーの効果', '時間の効果', '空間の効果', '物質の効果'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の結果」は何を表しますか？',
      answers: ['エネルギーの結果', '時間の結果', '空間の結果', '物質の結果'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の目的」は何を表しますか？',
      answers: ['エネルギーの目的', '時間の目的', '空間の目的', '物質の目的'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の意義」は何を表しますか？',
      answers: ['エネルギーの意義', '時間の意義', '空間の意義', '物質の意義'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の知恵」は何を表しますか？',
      answers: ['エネルギーの統合と調和', '時間の統合と調和', '空間の統合と調和', '物質の統合と調和'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の継続」は何を表しますか？',
      answers: ['エネルギーの継続', '時間の継続', '空間の継続', '物質の継続'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の発展」は何を表しますか？',
      answers: ['エネルギーの発展', '時間の発展', '空間の発展', '物質の発展'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の変化」は何を表しますか？',
      answers: ['エネルギーの変化', '時間の変化', '空間の変化', '物質の変化'],
      correctIndex: 0,
      level: 6,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の進化」は何を表しますか？',
      answers: ['エネルギーの進化', '時間の進化', '空間の進化', '物質の進化'],
      correctIndex: 0,
      level: 6,
    ),

    // レベル7（マニク）の問題
    // 1. マヤ暦の神秘と霊性に関する問題（10問）
    QuizQuestion(
      question: 'マヤ暦における「神秘の本質」は何を表しますか？',
      answers: ['エネルギーの神秘', '時間の神秘', '空間の神秘', '物質の神秘'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「霊性の本質」は何を表しますか？',
      answers: ['エネルギーの霊性', '時間の霊性', '空間の霊性', '物質の霊性'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「神秘の力」は何を表しますか？',
      answers: ['エネルギーの力', '時間の力', '空間の力', '物質の力'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「霊性の力」は何を表しますか？',
      answers: ['エネルギーの力', '時間の力', '空間の力', '物質の力'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「神秘の知恵」は何を表しますか？',
      answers: ['エネルギーの知恵', '時間の知恵', '空間の知恵', '物質の知恵'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「霊性の知恵」は何を表しますか？',
      answers: ['エネルギーの知恵', '時間の知恵', '空間の知恵', '物質の知恵'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「神秘の導き」は何を表しますか？',
      answers: ['エネルギーの導き', '時間の導き', '空間の導き', '物質の導き'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「霊性の導き」は何を表しますか？',
      answers: ['エネルギーの導き', '時間の導き', '空間の導き', '物質の導き'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「神秘の保護」は何を表しますか？',
      answers: ['エネルギーの保護', '時間の保護', '空間の保護', '物質の保護'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「霊性の保護」は何を表しますか？',
      answers: ['エネルギーの保護', '時間の保護', '空間の保護', '物質の保護'],
      correctIndex: 0,
      level: 7,
    ),

    // 2. マヤ暦の儀式と儀式に関する問題（10問）
    QuizQuestion(
      question: 'マヤ暦における「儀式の本質」は何を表しますか？',
      answers: ['エネルギーの儀式', '時間の儀式', '空間の儀式', '物質の儀式'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の力」は何を表しますか？',
      answers: ['エネルギーの力', '時間の力', '空間の力', '物質の力'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の知恵」は何を表しますか？',
      answers: ['エネルギーの知恵', '時間の知恵', '空間の知恵', '物質の知恵'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の導き」は何を表しますか？',
      answers: ['エネルギーの導き', '時間の導き', '空間の導き', '物質の導き'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の保護」は何を表しますか？',
      answers: ['エネルギーの保護', '時間の保護', '空間の保護', '物質の保護'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の祝福」は何を表しますか？',
      answers: ['エネルギーの祝福', '時間の祝福', '空間の祝福', '物質の祝福'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の浄化」は何を表しますか？',
      answers: ['エネルギーの浄化', '時間の浄化', '空間の浄化', '物質の浄化'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の癒し」は何を表しますか？',
      answers: ['エネルギーの癒し', '時間の癒し', '空間の癒し', '物質の癒し'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の変容」は何を表しますか？',
      answers: ['エネルギーの変容', '時間の変容', '空間の変容', '物質の変容'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「儀式の統合」は何を表しますか？',
      answers: ['エネルギーの統合', '時間の統合', '空間の統合', '物質の統合'],
      correctIndex: 0,
      level: 7,
    ),

    // 3. マヤ暦の予言と予言に関する問題（10問）
    QuizQuestion(
      question: 'マヤ暦における「予言の本質」は何を表しますか？',
      answers: ['エネルギーの予言', '時間の予言', '空間の予言', '物質の予言'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の力」は何を表しますか？',
      answers: ['エネルギーの力', '時間の力', '空間の力', '物質の力'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の知恵」は何を表しますか？',
      answers: ['エネルギーの知恵', '時間の知恵', '空間の知恵', '物質の知恵'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の導き」は何を表しますか？',
      answers: ['エネルギーの導き', '時間の導き', '空間の導き', '物質の導き'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の保護」は何を表しますか？',
      answers: ['エネルギーの保護', '時間の保護', '空間の保護', '物質の保護'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の警告」は何を表しますか？',
      answers: ['エネルギーの警告', '時間の警告', '空間の警告', '物質の警告'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の希望」は何を表しますか？',
      answers: ['エネルギーの希望', '時間の希望', '空間の希望', '物質の希望'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の変容」は何を表しますか？',
      answers: ['エネルギーの変容', '時間の変容', '空間の変容', '物質の変容'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の統合」は何を表しますか？',
      answers: ['エネルギーの統合', '時間の統合', '空間の統合', '物質の統合'],
      correctIndex: 0,
      level: 7,
    ),
    QuizQuestion(
      question: 'マヤ暦における「予言の進化」は何を表しますか？',
      answers: ['エネルギーの進化', '時間の進化', '空間の進化', '物質の進化'],
      correctIndex: 0,
      level: 7,
    ),

    // レベル8（ラマト）の問題
    // 1. マヤ暦の時間と空間に関する問題（10問）
    QuizQuestion(
      question: 'マヤ暦における「時間の本質」は何を表しますか？',
      answers: ['エネルギーの流れ', '空間の広がり', '物質の変化', '意識の進化'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「空間の本質」は何を表しますか？',
      answers: ['エネルギーの場', '時間の流れ', '物質の配置', '意識の広がり'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の力」は何を表しますか？',
      answers: ['エネルギーの力', '空間の力', '物質の力', '意識の力'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「空間の力」は何を表しますか？',
      answers: ['エネルギーの力', '時間の力', '物質の力', '意識の力'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の知恵」は何を表しますか？',
      answers: ['エネルギーの知恵', '空間の知恵', '物質の知恵', '意識の知恵'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「空間の知恵」は何を表しますか？',
      answers: ['エネルギーの知恵', '時間の知恵', '物質の知恵', '意識の知恵'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の導き」は何を表しますか？',
      answers: ['エネルギーの導き', '空間の導き', '物質の導き', '意識の導き'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「空間の導き」は何を表しますか？',
      answers: ['エネルギーの導き', '時間の導き', '物質の導き', '意識の導き'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「時間の保護」は何を表しますか？',
      answers: ['エネルギーの保護', '空間の保護', '物質の保護', '意識の保護'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「空間の保護」は何を表しますか？',
      answers: ['エネルギーの保護', '時間の保護', '物質の保護', '意識の保護'],
      correctIndex: 0,
      level: 8,
    ),

    // 2. マヤ暦の物質と意識に関する問題（10問）
    QuizQuestion(
      question: 'マヤ暦における「物質の本質」は何を表しますか？',
      answers: ['エネルギーの形', '時間の形', '空間の形', '意識の形'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「意識の本質」は何を表しますか？',
      answers: ['エネルギーの意識', '時間の意識', '空間の意識', '物質の意識'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「物質の力」は何を表しますか？',
      answers: ['エネルギーの力', '時間の力', '空間の力', '意識の力'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「意識の力」は何を表しますか？',
      answers: ['エネルギーの力', '時間の力', '空間の力', '物質の力'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「物質の知恵」は何を表しますか？',
      answers: ['エネルギーの知恵', '時間の知恵', '空間の知恵', '意識の知恵'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「意識の知恵」は何を表しますか？',
      answers: ['エネルギーの知恵', '時間の知恵', '空間の知恵', '物質の知恵'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「物質の導き」は何を表しますか？',
      answers: ['エネルギーの導き', '時間の導き', '空間の導き', '意識の導き'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「意識の導き」は何を表しますか？',
      answers: ['エネルギーの導き', '時間の導き', '空間の導き', '物質の導き'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「物質の保護」は何を表しますか？',
      answers: ['エネルギーの保護', '時間の保護', '空間の保護', '意識の保護'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「意識の保護」は何を表しますか？',
      answers: ['エネルギーの保護', '時間の保護', '空間の保護', '物質の保護'],
      correctIndex: 0,
      level: 8,
    ),

    // 3. マヤ暦の統合と進化に関する問題（10問）
    QuizQuestion(
      question: 'マヤ暦における「統合の本質」は何を表しますか？',
      answers: ['エネルギーの統合', '時間の統合', '空間の統合', '物質の統合'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「進化の本質」は何を表しますか？',
      answers: ['エネルギーの進化', '時間の進化', '空間の進化', '物質の進化'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の力」は何を表しますか？',
      answers: ['エネルギーの力', '時間の力', '空間の力', '物質の力'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「進化の力」は何を表しますか？',
      answers: ['エネルギーの力', '時間の力', '空間の力', '物質の力'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の知恵」は何を表しますか？',
      answers: ['エネルギーの知恵', '時間の知恵', '空間の知恵', '物質の知恵'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「進化の知恵」は何を表しますか？',
      answers: ['エネルギーの知恵', '時間の知恵', '空間の知恵', '物質の知恵'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の導き」は何を表しますか？',
      answers: ['エネルギーの導き', '時間の導き', '空間の導き', '物質の導き'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「進化の導き」は何を表しますか？',
      answers: ['エネルギーの導き', '時間の導き', '空間の導き', '物質の導き'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「統合の保護」は何を表しますか？',
      answers: ['エネルギーの保護', '時間の保護', '空間の保護', '物質の保護'],
      correctIndex: 0,
      level: 8,
    ),
    QuizQuestion(
      question: 'マヤ暦における「進化の保護」は何を表しますか？',
      answers: ['エネルギーの保護', '時間の保護', '空間の保護', '物質の保護'],
      correctIndex: 0,
      level: 8,
    ),
  ];

  static List<QuizQuestion> getQuestionsForLevel(int level) {
    return _questions.where((question) => question.level == level).toList();
  }
}

class MayaQuizScreen extends StatelessWidget {
  const MayaQuizScreen({super.key});

  Widget _buildLevelItem({
    required BuildContext context,
    required String title,
    required String description,
    required int difficulty,
    required VoidCallback onTap,
  }) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: Text('レベル $difficulty'),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('マヤ暦クイズ'),
      ),
      body: ListView(
        children: [
          _buildLevelItem(
            context: context,
            title: 'イミッシュ (Imix)',
            description: 'マヤ暦の基本を学びましょう',
            difficulty: 1,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizGameScreen(level: 1),
              ),
            ),
          ),
          _buildLevelItem(
            context: context,
            title: 'イク (Ik)',
            description: 'マヤ暦の計算を理解しましょう',
            difficulty: 2,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizGameScreen(level: 2),
              ),
            ),
          ),
          _buildLevelItem(
            context: context,
            title: 'アクバル (Akbal)',
            description: 'マヤ暦の深い理解を深めましょう',
            difficulty: 3,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizGameScreen(level: 3),
              ),
            ),
          ),
          _buildLevelItem(
            context: context,
            title: 'カン (Kan)',
            description: 'マヤ暦のエネルギーを学びましょう',
            difficulty: 4,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizGameScreen(level: 4),
              ),
            ),
          ),
          _buildLevelItem(
            context: context,
            title: 'チッカン (Chicchan)',
            description: '運命の波動について学びましょう',
            difficulty: 5,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizGameScreen(level: 5),
              ),
            ),
          ),
          _buildLevelItem(
            context: context,
            title: 'キミ (Cimi)',
            description: '太陽の周期と影響を理解しましょう',
            difficulty: 6,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizGameScreen(level: 6),
              ),
            ),
          ),
          _buildLevelItem(
            context: context,
            title: 'マニク (Manik)',
            description: '宇宙のリズムと調和を学びましょう',
            difficulty: 7,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizGameScreen(level: 7),
              ),
            ),
          ),
          _buildLevelItem(
            context: context,
            title: 'ラマト (Lamat)',
            description: '時間と空間の本質を理解しましょう',
            difficulty: 8,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizGameScreen(level: 8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuizGameScreen extends StatefulWidget {
  final int level;

  const QuizGameScreen({super.key, required this.level});

  @override
  State<QuizGameScreen> createState() => _QuizGameScreenState();
}

class _QuizGameScreenState extends State<QuizGameScreen> {
  late List<QuizQuestion> _questions;
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _isAnswered = false;

  @override
  void initState() {
    super.initState();
    _questions = QuizData.getQuestionsForLevel(widget.level);
    _questions.shuffle();
  }

  void _answerQuestion(int selectedIndex) {
    if (_isAnswered) return;

    setState(() {
      _isAnswered = true;
      if (selectedIndex == _questions[_currentQuestionIndex].correctIndex) {
        _score++;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _currentQuestionIndex++;
      _isAnswered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_currentQuestionIndex >= _questions.length) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('クイズ結果'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'スコア: $_score/${_questions.length}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('メニューに戻る'),
              ),
            ],
          ),
        ),
      );
    }

    final currentQuestion = _questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('レベル ${widget.level} クイズ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '問題 ${_currentQuestionIndex + 1}/${_questions.length}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            Text(
              currentQuestion.question,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            ...currentQuestion.answers.asMap().entries.map((entry) {
              final index = entry.key;
              final answer = entry.value;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () => _answerQuestion(index),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isAnswered
                        ? index == currentQuestion.correctIndex
                            ? Colors.green
                            : Colors.red
                        : null,
                  ),
                  child: Text(answer),
                ),
              );
            }).toList(),
            if (_isAnswered)
              ElevatedButton(
                onPressed: _nextQuestion,
                child: const Text('次の問題'),
              ),
          ],
        ),
      ),
    );
  }
}

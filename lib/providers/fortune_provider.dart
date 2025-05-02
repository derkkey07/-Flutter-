import 'package:flutter/material.dart';
import 'package:maya_calendar/models/maya_date.dart';

class FortuneProvider extends ChangeNotifier {
  final Map<DateTime, String> _fortunes = {};
  String? _weeklyFortune;
  DateTime? _lastWeeklyFortuneUpdate;

  String getFortuneForDate(DateTime date) {
    // 日付のキーを作成（時間部分を無視）
    final key = DateTime(date.year, date.month, date.day);

    // 既に運勢が設定されている場合はそれを返す
    if (_fortunes.containsKey(key)) {
      return _fortunes[key]!;
    }

    // マヤ暦の日付を取得
    final mayaDate = MayaDate.fromGregorian(date);

    // 運勢を生成
    final fortune = _generateFortune(mayaDate);
    _fortunes[key] = fortune;

    return fortune;
  }

  String getWeeklyFortune() {
    final now = DateTime.now();
    final nextMonday = _getNextMonday(now);

    // 既に今週の運勢が生成されている場合はそれを返す
    if (_weeklyFortune != null && _lastWeeklyFortuneUpdate != null) {
      if (_lastWeeklyFortuneUpdate!.isBefore(nextMonday)) {
        return _weeklyFortune!;
      }
    }

    // 新しい週の運勢を生成
    _weeklyFortune = _generateWeeklyFortune();
    _lastWeeklyFortuneUpdate = now;
    return _weeklyFortune!;
  }

  DateTime _getNextMonday(DateTime date) {
    final daysUntilMonday = (8 - date.weekday) % 7;
    return date.add(Duration(days: daysUntilMonday));
  }

  String _generateWeeklyFortune() {
    final now = DateTime.now();
    final monday = now.subtract(Duration(days: now.weekday - 1));
    final sunday = monday.add(const Duration(days: 6));

    // 週の始まりと終わりのマヤ暦の日付を取得
    final startMayaDate = MayaDate.fromGregorian(monday);
    final endMayaDate = MayaDate.fromGregorian(sunday);

    // 週の運勢を生成
    final weekFortune = _getWeekFortune(startMayaDate, endMayaDate);
    final luckyColors = _getWeeklyLuckyColors(startMayaDate, endMayaDate);
    final luckyNumbers = _getWeeklyLuckyNumbers(startMayaDate, endMayaDate);
    final advice = _getWeeklyAdvice(startMayaDate, endMayaDate);
    final caution = _getWeeklyCaution(startMayaDate, endMayaDate);

    return '''
$weekFortune

ラッキーカラー: ${luckyColors.join('、')}
ラッキーナンバー: ${luckyNumbers.join('、')}

アドバイス:
$advice

注意点:
$caution
''';
  }

  String _getWeekFortune(MayaDate start, MayaDate end) {
    final startEnergy = _getDayEnergy(start);
    final endEnergy = _getDayEnergy(end);
    final transition = _getEnergyTransition(startEnergy, endEnergy);

    return '''
今週は$startEnergyから$endEnergyへの移行期です。
$transition
''';
  }

  String _getDayEnergy(MayaDate date) {
    final number = date.dayNumber;
    final sign = date.daySign;

    switch (number) {
      case 1:
        return '始まりと創造のエネルギー';
      case 2:
        return '調和と協力のエネルギー';
      case 3:
        return '表現と創造のエネルギー';
      case 4:
        return '安定と基盤のエネルギー';
      case 5:
        return '変化と自由のエネルギー';
      case 6:
        return '調和と責任のエネルギー';
      case 7:
        return '内省と知恵のエネルギー';
      case 8:
        return '物質と成功のエネルギー';
      case 9:
        return '完成と寛容のエネルギー';
      case 10:
        return '新たな始まりのエネルギー';
      case 11:
        return '直感と啓示のエネルギー';
      case 12:
        return '創造と表現のエネルギー';
      case 13:
        return '変容と進化のエネルギー';
      default:
        return '特別なエネルギー';
    }
  }

  String _getEnergyTransition(String start, String end) {
    if (start == end) {
      return '同じエネルギーが続くため、そのテーマを深めていく週となります。';
    }
    return '$startから$endへの移行を通じて、新しい視点や可能性が開かれていく週となります。';
  }

  List<String> _getWeeklyLuckyColors(MayaDate start, MayaDate end) {
    // 週の始まりの日のラッキーカラーを返す
    return [_getLuckyColor(start.daySign)];
  }

  List<int> _getWeeklyLuckyNumbers(MayaDate start, MayaDate end) {
    // 週の始まりの日のラッキーナンバーを返す
    return [_getLuckyNumber(start.dayNumber)];
  }

  String _getWeeklyAdvice(MayaDate start, MayaDate end) {
    final startAdvice = _getAdvice(start.daySign, start.dayNumber);
    final endAdvice = _getAdvice(end.daySign, end.dayNumber);

    return '''
週の始めは$startAdvice
週の終わりに向けて$endAdvice
''';
  }

  String _getWeeklyCaution(MayaDate start, MayaDate end) {
    final startCaution = _getCaution(start.daySign, start.dayNumber);
    final endCaution = _getCaution(end.daySign, end.dayNumber);

    return '''
週の始めは$startCaution
週の終わりに向けて$endCaution
''';
  }

  String _generateFortune(MayaDate mayaDate) {
    // マヤ暦の日付に基づいて運勢を生成
    final dayNumber = mayaDate.dayNumber;
    final daySign = mayaDate.daySign;

    // 日付の数値に基づいた運勢
    final numberFortune = _getNumberFortune(dayNumber);

    // 日付のシンボルに基づいた運勢
    final signFortune = _getSignFortune(daySign);

    // ラッキーカラーとラッキーナンバー
    final luckyColor = _getLuckyColor(daySign);
    final luckyNumber = _getLuckyNumber(dayNumber);

    // アドバイスと注意点
    final advice = _getAdvice(daySign, dayNumber);
    final caution = _getCaution(daySign, dayNumber);

    return '''
$numberFortune
$signFortune

ラッキーカラー: $luckyColor
ラッキーナンバー: $luckyNumber

アドバイス:
$advice

注意点:
$caution
''';
  }

  String _getNumberFortune(int number) {
    switch (number) {
      case 1:
        return '新しい始まりの日です。積極的に行動しましょう。\n創造性とリーダーシップが高まります。';
      case 2:
        return '協調性が求められる日です。周囲との調和を大切に。\nパートナーシップや協力関係が重要です。';
      case 3:
        return '創造性が高まる日です。アイデアを形にしましょう。\n自己表現とコミュニケーションが活発になります。';
      case 4:
        return '安定を求める日です。基礎を固めましょう。\n組織化と計画性が成功の鍵です。';
      case 5:
        return '変化の日です。新しい可能性に目を向けましょう。\n自由と冒険心が高まります。';
      case 6:
        return '調和とバランスの日です。家庭や人間関係に注目。\n責任感と奉仕の精神が重要です。';
      case 7:
        return '内省の日です。自分自身と向き合いましょう。\n知恵と洞察力が冴えます。';
      case 8:
        return '物質的な成功の日です。ビジネスやお金に注目。\n権力と富のエネルギーが高まります。';
      case 9:
        return '完成と終わりの日です。次のステップを考えましょう。\n寛容さと普遍的な愛が重要です。';
      case 10:
        return '新たなサイクルの始まりです。目標を設定しましょう。\n決断力と行動力が高まります。';
      case 11:
        return '直感が冴える日です。インスピレーションを受け取りましょう。\n霊的な洞察と啓示が訪れます。';
      case 12:
        return '創造性と表現の日です。アートや自己表現に注目。\n想像力と芸術性が高まります。';
      case 13:
        return '変容と進化の日です。大きな変化を受け入れましょう。\n神秘的な力と変革のエネルギーが満ちています。';
      default:
        return '特別な日です。自分の直感を信じましょう。\n無限の可能性が開かれています。';
    }
  }

  String _getSignFortune(String sign) {
    switch (sign) {
      case 'Imix':
        return '創造性と始まりのエネルギーが満ちています。\n新しいプロジェクトやアイデアに最適な日です。';
      case 'Ik':
        return '風のエネルギーが変化をもたらします。\nコミュニケーションと情報交換が活発になります。';
      case 'Akbal':
        return '内なる知恵と直感が冴えています。\n夢やインスピレーションに注目しましょう。';
      case 'Kan':
        return '成長と繁栄のエネルギーが高まっています。\n創造力と活力が満ち溢れています。';
      case 'Chicchan':
        return '生命力と情熱が溢れています。\n感情と直感を大切にしましょう。';
      case 'Cimi':
        return '変容と再生の時です。\n古いものを手放し、新しい始まりを迎えましょう。';
      case 'Manik':
        return '癒しと調和のエネルギーが満ちています。\nバランスと平和を大切にしましょう。';
      case 'Lamat':
        return '美と芸術のエネルギーが高まっています。\n創造性と表現力を発揮しましょう。';
      case 'Muluc':
        return '感情と直感が冴えています。\n心の声に耳を傾けましょう。';
      case 'Oc':
        return '知恵と洞察力が高まっています。\n学びと成長の機会が訪れます。';
      case 'Chuen':
        return '創造性と遊び心が溢れています。\n楽しみながら新しいことに挑戦しましょう。';
      case 'Eb':
        return 'コミュニケーションと人間関係に注目。\n対話と理解を深めましょう。';
      case 'Ben':
        return 'リーダーシップと勇気が求められます。\n目標に向かって前進しましょう。';
      case 'Ix':
        return '神秘と直感のエネルギーが高まっています。\n内なる知恵に耳を傾けましょう。';
      case 'Men':
        return '知恵と洞察力が冴えています。\n高次の視点から物事を見つめましょう。';
      case 'Cib':
        return '内省と瞑想の時です。\n自己理解と精神的な成長を深めましょう。';
      case 'Caban':
        return '変化と進化のエネルギーが満ちています。\n新しい可能性に目を向けましょう。';
      case 'Etznab':
        return '真実と洞察の時です。\n本質を見極め、真実を見つめましょう。';
      case 'Cauac':
        return '癒しと浄化のエネルギーが高まっています。\n心身のバランスを取り戻しましょう。';
      case 'Ahau':
        return '完成と悟りの時です。\n高次の意識とつながりましょう。';
      default:
        return '特別なエネルギーが満ちています。\n無限の可能性が開かれています。';
    }
  }

  String _getLuckyColor(String sign) {
    switch (sign) {
      case 'Imix':
        return '赤';
      case 'Ik':
        return '白';
      case 'Akbal':
        return '黒';
      case 'Kan':
        return '黄';
      case 'Chicchan':
        return '緑';
      case 'Cimi':
        return '紫';
      case 'Manik':
        return '青';
      case 'Lamat':
        return '金';
      case 'Muluc':
        return '銀';
      case 'Oc':
        return '茶';
      case 'Chuen':
        return 'オレンジ';
      case 'Eb':
        return 'ピンク';
      case 'Ben':
        return '赤紫';
      case 'Ix':
        return '深緑';
      case 'Men':
        return '水色';
      case 'Cib':
        return '灰色';
      case 'Caban':
        return '茶色';
      case 'Etznab':
        return '黒';
      case 'Cauac':
        return '青緑';
      case 'Ahau':
        return '金';
      default:
        return '虹色';
    }
  }

  int _getLuckyNumber(int number) {
    return (number * 2) % 9 + 1;
  }

  String _getAdvice(String sign, int number) {
    // 日付の数値と日の印の組み合わせに基づいてアドバイスを生成
    final baseAdvice = _getBaseAdvice(sign);
    final numberAdvice = _getNumberAdvice(number);
    final combinationAdvice = _getCombinationAdvice(sign, number);

    return '''
$baseAdvice
$numberAdvice
$combinationAdvice
''';
  }

  String _getBaseAdvice(String sign) {
    final advices = {
      'Imix': [
        '新しいプロジェクトを始めるのに最適な日です。',
        '創造性を発揮し、リーダーシップを取ってください。',
        '新しいアイデアを形にするチャンスです。',
        '積極的に行動を起こしましょう。',
        '自分の才能を信じて前進してください。',
        'リーダーとしての資質を発揮しましょう。',
        '新しいビジョンを描いてください。',
        '創造的なエネルギーを活用しましょう。',
        '新しい始まりを大切にしてください。',
        '積極的な行動が成功を導きます。',
        'リーダーシップを発揮するチャンスです。',
        '新しい可能性に目を向けましょう。',
        '創造的なアイデアを形にしてください。',
        '積極的に新しいことに挑戦を。',
        '自分の才能を信じて行動を。',
        '新しいプロジェクトを始める準備を。',
        '創造性を発揮する絶好の機会です。',
        'リーダーとしての資質を磨きましょう。',
        '新しいビジョンを描く時です。',
        '創造的なエネルギーを活用してください。',
        '新しい始まりを大切にする時です。',
        '積極的な行動が成功を導きます。',
        'リーダーシップを発揮する準備を。',
        '新しい可能性に目を向けましょう。',
        '創造的なアイデアを形にする時です。',
        '積極的に新しいことに挑戦を。',
        '自分の才能を信じて行動を。',
        '新しいプロジェクトを始める準備を。',
        '創造性を発揮する絶好の機会です。',
        'リーダーとしての資質を磨きましょう。',
        '新しいビジョンを描く時です。',
        '創造的なエネルギーを活用してください。',
        '新しい始まりを大切にする時です。',
        '積極的な行動が成功を導きます。',
        'リーダーシップを発揮する準備を。',
        '新しい可能性に目を向けましょう。',
        '創造的なアイデアを形にする時です。',
        '積極的に新しいことに挑戦を。',
      ],
      'Ik': [
        'コミュニケーションを大切にしましょう。',
        '新しい情報やアイデアに耳を傾けてください。',
        '風のように自由に考えを巡らせましょう。',
        '周囲との調和を大切にしてください。',
        '情報交換を活発に行いましょう。',
        '対話を通じて理解を深めましょう。',
        '新しい視点を取り入れてください。',
        'コミュニケーションの機会を大切に。',
        '情報の共有を積極的に行いましょう。',
        '周囲との関係を深めてください。',
        '対話を通じて新しい発見を。',
        'コミュニケーションの質を高めましょう。',
        '情報の取捨選択に注意を払って。',
        '周囲との調和を大切にしてください。',
        '対話を通じて理解を深めましょう。',
        '新しい視点を取り入れてください。',
        'コミュニケーションの機会を大切に。',
        '情報の共有を積極的に行いましょう。',
        '周囲との関係を深めてください。',
        '対話を通じて新しい発見を。',
        'コミュニケーションの質を高めましょう。',
        '情報の取捨選択に注意を払って。',
        '周囲との調和を大切にしてください。',
        '対話を通じて理解を深めましょう。',
        '新しい視点を取り入れてください。',
        'コミュニケーションの機会を大切に。',
        '情報の共有を積極的に行いましょう。',
        '周囲との関係を深めてください。',
        '対話を通じて新しい発見を。',
        'コミュニケーションの質を高めましょう。',
        '情報の取捨選択に注意を払って。',
        '周囲との調和を大切にしてください。',
        '対話を通じて理解を深めましょう。',
        '新しい視点を取り入れてください。',
        'コミュニケーションの機会を大切に。',
        '情報の共有を積極的に行いましょう。',
        '周囲との関係を深めてください。',
        '対話を通じて新しい発見を。',
        'コミュニケーションの質を高めましょう。',
        '情報の取捨選択に注意を払って。',
      ],
      // ... 他の日の印のアドバイスも同様に50個ずつ追加
    };

    final signAdvices = advices[sign] ?? ['自分の直感を信じて行動しましょう。'];
    return signAdvices[
        (DateTime.now().day + sign.hashCode) % signAdvices.length];
  }

  String _getNumberAdvice(int number) {
    final advices = {
      1: [
        '新しい始まりを大切にしましょう。',
        'リーダーシップを発揮するチャンスです。',
        '創造的なアイデアを形にしましょう。',
        '積極的に行動を起こしてください。',
        '新しい可能性に目を向けましょう。',
        'リーダーとしての資質を発揮を。',
        '新しいビジョンを描いてください。',
        '創造的なエネルギーを活用を。',
        '新しい始まりを大切にしてください。',
        '積極的な行動が成功を導きます。',
        'リーダーシップを発揮する準備を。',
        '新しい可能性に目を向けましょう。',
        '創造的なアイデアを形にしてください。',
        '積極的に新しいことに挑戦を。',
        '自分の才能を信じて行動を。',
        '新しいプロジェクトを始める準備を。',
        '創造性を発揮する絶好の機会です。',
        'リーダーとしての資質を磨きましょう。',
        '新しいビジョンを描く時です。',
        '創造的なエネルギーを活用してください。',
        '新しい始まりを大切にする時です。',
        '積極的な行動が成功を導きます。',
        'リーダーシップを発揮する準備を。',
        '新しい可能性に目を向けましょう。',
        '創造的なアイデアを形にする時です。',
        '積極的に新しいことに挑戦を。',
        '自分の才能を信じて行動を。',
        '新しいプロジェクトを始める準備を。',
        '創造性を発揮する絶好の機会です。',
        'リーダーとしての資質を磨きましょう。',
        '新しいビジョンを描く時です。',
        '創造的なエネルギーを活用してください。',
        '新しい始まりを大切にする時です。',
        '積極的な行動が成功を導きます。',
        'リーダーシップを発揮する準備を。',
        '新しい可能性に目を向けましょう。',
        '創造的なアイデアを形にする時です。',
        '積極的に新しいことに挑戦を。',
        '自分の才能を信じて行動を。',
        '新しいプロジェクトを始める準備を。',
        '創造性を発揮する絶好の機会です。',
        'リーダーとしての資質を磨きましょう。',
        '新しいビジョンを描く時です。',
        '創造的なエネルギーを活用してください。',
        '新しい始まりを大切にする時です。',
        '積極的な行動が成功を導きます。',
        'リーダーシップを発揮する準備を。',
        '新しい可能性に目を向けましょう。',
        '創造的なアイデアを形にする時です。',
        '積極的に新しいことに挑戦を。',
        '自分の才能を信じて行動を。',
        '新しいプロジェクトを始める準備を。',
        '創造性を発揮する絶好の機会です。',
        'リーダーとしての資質を磨きましょう。',
        '新しいビジョンを描く時です。',
        '創造的なエネルギーを活用してください。',
        '新しい始まりを大切にする時です。',
        '積極的な行動が成功を導きます。',
        'リーダーシップを発揮する準備を。',
        '新しい可能性に目を向けましょう。',
        '創造的なアイデアを形にする時です。',
        '積極的に新しいことに挑戦を。',
      ],
      2: [
        '協力関係を大切にしましょう。',
        'バランスと調和を心がけてください。',
        'パートナーシップを深めましょう。',
        '周囲との協調を大切に。',
        '対話と理解を深めてください。',
        '協力関係を築くチャンスです。',
        'バランスの取れた行動を心がけて。',
        'パートナーシップを大切にしましょう。',
        '周囲との調和を保ってください。',
        '対話を通じて理解を深めましょう。',
        '協力関係を築く準備を。',
        'バランスの取れた行動を心がけて。',
        'パートナーシップを大切にしましょう。',
        '周囲との調和を保ってください。',
        '対話を通じて理解を深めましょう。',
        '協力関係を築くチャンスです。',
        'バランスの取れた行動を心がけて。',
        'パートナーシップを大切にしましょう。',
        '周囲との調和を保ってください。',
        '対話を通じて理解を深めましょう。',
        '協力関係を築く準備を。',
        'バランスの取れた行動を心がけて。',
        'パートナーシップを大切にしましょう。',
        '周囲との調和を保ってください。',
        '対話を通じて理解を深めましょう。',
        '協力関係を築くチャンスです。',
        'バランスの取れた行動を心がけて。',
        'パートナーシップを大切にしましょう。',
        '周囲との調和を保ってください。',
        '対話を通じて理解を深めましょう。',
        '協力関係を築く準備を。',
        'バランスの取れた行動を心がけて。',
        'パートナーシップを大切にしましょう。',
        '周囲との調和を保ってください。',
        '対話を通じて理解を深めましょう。',
        '協力関係を築くチャンスです。',
        'バランスの取れた行動を心がけて。',
        'パートナーシップを大切にしましょう。',
        '周囲との調和を保ってください。',
        '対話を通じて理解を深めましょう。',
        '協力関係を築く準備を。',
        'バランスの取れた行動を心がけて。',
        'パートナーシップを大切にしましょう。',
        '周囲との調和を保ってください。',
        '対話を通じて理解を深めましょう。',
        '協力関係を築くチャンスです。',
        'バランスの取れた行動を心がけて。',
        'パートナーシップを大切にしましょう。',
        '周囲との調和を保ってください。',
      ],
      // ... 他の数値のアドバイスも同様に50個ずつ追加
    };

    final numberAdvices = advices[number] ?? ['自分の直感を信じて行動しましょう。'];
    return numberAdvices[(DateTime.now().day + number) % numberAdvices.length];
  }

  String _getCombinationAdvice(String sign, int number) {
    final combinations = {
      'Imix': {
        1: '創造性とリーダーシップを発揮する絶好の機会です。',
        2: '新しいアイデアを周囲と共有しましょう。',
        3: '創造的なプロジェクトを始めるのに最適です。',
        4: 'リーダーとしての資質を発揮する時です。',
        5: '新しいビジョンを描く絶好の機会です。',
        6: '創造的なエネルギーを活用する時です。',
        7: '新しい始まりを大切にする絶好の機会です。',
        8: '積極的な行動が成功を導く時です。',
        9: 'リーダーシップを発揮する準備が整っています。',
        10: '新しい可能性に目を向ける絶好の機会です。',
        11: '創造的なアイデアを形にする時です。',
        12: '積極的に新しいことに挑戦する絶好の機会です。',
        13: '自分の才能を信じて行動する時です。',
        // ... 他の組み合わせも同様に追加
      },
      'Ik': {
        1: '新しい情報を積極的に取り入れましょう。',
        2: 'コミュニケーションを大切にしてください。',
        3: '風のように自由な発想を大切に。',
        4: '周囲との調和を保ってください。',
        5: '情報交換を活発に行いましょう。',
        6: '対話を通じて理解を深めてください。',
        7: '新しい視点を取り入れる時です。',
        8: 'コミュニケーションの機会を大切に。',
        9: '情報の共有を積極的に行いましょう。',
        10: '周囲との関係を深める絶好の機会です。',
        11: '対話を通じて新しい発見を。',
        12: 'コミュニケーションの質を高めましょう。',
        13: '情報の取捨選択に注意を払って。',
        // ... 他の組み合わせも同様に追加
      },
      // ... 他の日の印の組み合わせも同様に追加
    };

    final signCombinations = combinations[sign];
    if (signCombinations != null) {
      final combinationAdvice = signCombinations[number];
      if (combinationAdvice != null) {
        return combinationAdvice;
      }
    }
    return 'この組み合わせは特別な可能性を秘めています。';
  }

  String _getCaution(String sign, int number) {
    // 日付の数値と日の印の組み合わせに基づいて注意点を生成
    final baseCaution = _getBaseCaution(sign);
    final numberCaution = _getNumberCaution(number);
    final combinationCaution = _getCombinationCaution(sign, number);

    return '''
$baseCaution
$numberCaution
$combinationCaution
''';
  }

  String _getBaseCaution(String sign) {
    final cautions = {
      'Imix': [
        '新しいアイデアに夢中になりすぎて、現実的な視点を見失わないように。',
        '周囲の意見を無視して独走しないよう気をつけて。',
        'アイデアを形にする前に、実現可能性を十分に検討を。',
        '熱意が空回りしないよう、一歩一歩着実に。',
        '自分の考えを押し付けすぎないように注意。',
        '目標に向かって突っ走りすぎないように。',
        '新しいことばかりに目を向けず、既存の価値も大切に。',
        '創造性を発揮しつつ、現実的な判断も忘れずに。',
        '周囲のペースも考慮しながら進めることを。',
        '独創的なアイデアと実務的な視点のバランスを。',
      ],
      'Ik': [
        '必要以上に情報を集めすぎて、行動が遅くならないように。',
        '周りの意見に流されすぎないよう、自分の軸を持って。',
        '言葉が先走って、相手の気持ちを傷つけないように。',
        '情報の取捨選択をしっかりと行い、混乱を避けて。',
        '考えすぎて行動が止まらないよう注意。',
        '多くの人と話すのは良いが、噂話には気をつけて。',
        '新しい情報に振り回されず、本質を見極めて。',
        '自分の意見を主張しつつ、相手の立場も考慮を。',
        'コミュニケーションの量より質を重視して。',
        '表面的な会話だけでなく、深い理解を目指して。',
      ],
      'Akbal': [
        '直感を大切にしつつ、現実的な判断も忘れずに。',
        '内なる声に耳を傾けすぎて、外界との接点を失わないように。',
        '夢想的になりすぎず、具体的な行動も心がけて。',
        '神秘的な事柄に没頭しすぎないよう注意。',
        '感情に流されすぎず、理性的な判断も大切に。',
        '個人の時間を大切にしつつ、孤立しないように。',
        '直感と論理のバランスを意識して。',
        '静かな時間を求めすぎて、チャンスを逃さないように。',
        '内省が自己否定に繋がらないよう気をつけて。',
        '精神的な探求と日常生活のバランスを。',
      ],
      'Kan': [
        '成長への焦りが空回りしないよう注意。',
        '目標に向かって突っ走りすぎないように。',
        '周囲のペースも考慮しながら進めることを。',
        '自己主張が強くなりすぎないよう気をつけて。',
        '競争意識が強くなりすぎないように。',
        '目先の利益に囚われすぎないように。',
        '自分のペースを守りつつ、協調性も忘れずに。',
        '成功を急ぎすぎて、大切なものを見失わないように。',
        '過度な完璧主義に陥らないよう注意。',
        '他者との比較に囚われすぎないように。',
      ],
      'Chicchan': [
        '感情的な判断で重要な決定をしないように。',
        '直感を信じつつ、慎重な判断も忘れずに。',
        '情熱的になりすぎて、周囲を置き去りにしないように。',
        'エネルギーの浪費に注意。',
        '感情の起伏が激しくなりすぎないように。',
        '衝動的な行動を抑え、熟考してから決断を。',
        '自己主張が強くなりすぎないよう気をつけて。',
        '周囲への配慮を忘れないように。',
        '感情と理性のバランスを保って。',
        '過度な期待を持ちすぎないように。',
      ],
      // ... 他の日の印の注意点も同様に追加
    };

    final signCautions = cautions[sign] ?? ['今日は特に慎重な判断が必要です。'];
    return signCautions[
        (DateTime.now().day + sign.hashCode) % signCautions.length];
  }

  String _getNumberCaution(int number) {
    final cautions = {
      1: [
        '新しいことを始める前に、十分な準備を整えることを忘れずに。',
        '独断的な判断を避け、周囲の意見にも耳を傾けて。',
        '焦って行動せず、計画的に進めることを心がけて。',
        '自己主張が強くなりすぎないよう注意。',
        '新しさに目を奪われ、基本を忘れないように。',
        '独創性を追求しつつ、現実的な視点も大切に。',
        '周囲のペースも考慮しながら進めることを。',
        '熱意が空回りしないよう、着実に前進を。',
        '目標に向かって突っ走りすぎないように。',
        '独りよがりな判断を避けるよう心がけて。',
      ],
      2: [
        '周囲に合わせすぎて、自分の意見を失わないように。',
        '協調性を重視しつつ、自己主張も適度に。',
        '人に頼りすぎず、自立心を持って行動を。',
        '優柔不断にならないよう、決断力も大切に。',
        '周囲の意見に流されすぎないよう注意。',
        '調和を重視しつつ、自分の軸も持って。',
        '相手に合わせすぎて、自分を見失わないように。',
        '協力を求めつつ、自己責任も忘れずに。',
        '人間関係に気を使いすぎないように。',
        '過度な妥協は避けるよう心がけて。',
      ],
      3: [
        '表現力を活かしつつ、相手の受け止め方にも配慮を。',
        '創造性を発揮しながら、現実的な視点も忘れずに。',
        '自己表現に夢中になりすぎて、周囲を置き去りにしないように。',
        'アイデアを形にする前に、実現可能性を検討して。',
        '表現することに気を取られ、本質を見失わないように。',
        '創造的な活動と日常の責任のバランスを。',
        '個性的な表現を心がけつつ、協調性も大切に。',
        '新しいアイデアに振り回されないよう注意。',
        '表現の自由と社会性のバランスを。',
        '創造性を追求しつつ、基本も大切に。',
      ],
      4: [
        '安定を求めすぎて、チャンスを逃さないように。',
        '慎重になりすぎて、行動が遅くならないよう注意。',
        '計画性を重視しつつ、柔軟性も忘れずに。',
        '保守的になりすぎず、新しい可能性も探って。',
        '基礎固めに集中しすぎて、視野が狭くならないように。',
        '安全策を取りすぎて、成長の機会を逃さないように。',
        '組織や規則に縛られすぎないよう注意。',
        '慎重さと決断力のバランスを。',
        '計画に固執しすぎないように。',
        '現状維持に固執せず、変化も受け入れて。',
      ],
      5: [
        '変化を求めすぎて、安定性を失わないように。',
        '自由を追求しすぎて、責任を忘れないように。',
        '新しいことに挑戦しつつ、リスク管理も忘れずに。',
        '変化を楽しみつつ、周囲への配慮も大切に。',
        '冒険心を持ちつつ、現実的な判断も。',
        '自由な発想を持ちつつ、ルールも守って。',
        '好奇心に任せすぎて、基本を忘れないように。',
        '変化を求めすぎて、大切なものを失わないように。',
        '新しい体験と安定のバランスを。',
        '自由な行動と責任のバランスを。',
      ],
      // ... 他の数値の注意点も同様に追加
    };

    final numberCautions = cautions[number] ?? ['今日は特に慎重な判断が必要です。'];
    return numberCautions[
        (DateTime.now().day + number) % numberCautions.length];
  }

  String _getCombinationCaution(String sign, int number) {
    final cautions = <String, Map<int, String>>{
      'Imix': {
        1: '新しいアイデアに夢中になって基本的な準備を怠らないように。',
        2: '協調性を重視しつつ、自分のビジョンも大切に。',
        3: '表現力を活かしつつ、実現可能性も考慮を。',
        4: '基礎固めを忘れず、創造性も活かして。',
        5: '変化を求めつつ、安定性も保って。',
        6: '責任感を持ちつつ、新しい発想も大切に。',
        7: '内省しつつ、積極性も忘れずに。',
        8: '成功を目指しつつ、プロセスも大切に。',
        9: '完成度を高めつつ、柔軟性も保って。',
        10: '新しい目標を立てつつ、現実的な計画も。',
        11: '直感を信じつつ、論理的な判断も。',
        12: '創造性を発揮しつつ、実務も疎かにしないように。',
        13: '大きな変化を求めつつ、着実な歩みも。'
      },
      'Ik': {
        1: '新しい情報に振り回されず、本質を見極めて。',
        2: '周囲との調和を重視しつつ、自分の意見も持って。',
        3: '表現力を活かしつつ、誤解を招かないよう注意。',
        4: '基本に忠実に、かつ柔軟なコミュニケーションを。',
        5: '自由な発想を持ちつつ、責任ある発言を。',
        6: '調和を重視しつつ、必要な主張はしっかりと。',
        7: '内なる声に耳を傾けつつ、対話も大切に。',
        8: '効果的な情報発信と、丁寧な情報収集を。',
        9: '広い視野を持ちつつ、重要点を見失わないように。',
        10: '新しい対話の形を探りつつ、基本も大切に。',
        11: '直感的な理解と論理的な説明のバランスを。',
        12: '創造的な表現と正確な伝達のバランスを。',
        13: '革新的な対話と従来の作法のバランスを。'
      },
      'Akbal': {
        1: '直感を大切にしつつ、現実的な判断も忘れずに。',
        2: '内省と対話のバランスを保って。',
        3: '創造的な表現と現実的な判断のバランスを。',
        4: '内なる探求と外的な責任のバランスを。',
        5: '自由な発想と現実的な制約のバランスを。',
        6: '精神的な成長と日常生活のバランスを。',
        7: '深い洞察と実践的な行動のバランスを。',
        8: '神秘的な探求と現実的な成功のバランスを。',
        9: '精神的な完成と社会的な調和のバランスを。',
        10: '新たな気づきと既存の知恵のバランスを。',
        11: '直感的な理解と論理的な分析のバランスを。',
        12: '創造的なビジョンと具体的な計画のバランスを。',
        13: '内的な変容と外的な変化のバランスを。'
      },
      'Kan': {
        1: '成長への焦りが空回りしないよう注意。',
        2: '協調性を重視しつつ、自己主張も適度に。',
        3: '表現力を活かしつつ、謙虚さも忘れずに。',
        4: '基礎固めと新たな挑戦のバランスを。',
        5: '変化を求めつつ、着実な成長も。',
        6: '責任ある行動と積極的な挑戦を。',
        7: '内省的な成長と外向的な成長を。',
        8: '物質的な成功と精神的な成長を。',
        9: '達成感と新たな目標のバランスを。',
        10: '新しい目標と現実的な計画を。',
        11: '直感的な判断と慎重な分析を。',
        12: '創造的な発展と着実な進歩を。',
        13: '大きな飛躍と地に足のついた成長を。'
      },
      'Chicchan': {
        1: '感情的な判断で重要な決定をしないように。',
        2: '感情と理性のバランスを保って。',
        3: '創造的な表現と感情のコントロールのバランスを。',
        4: '感情の安定と情熱的な行動のバランスを。',
        5: '自由な感情表現と自己抑制のバランスを。',
        6: '感情的な共感と理性的な判断を。',
        7: '内なる感情の理解と外への表現を。',
        8: '感情的な充実と現実的な成功を。',
        9: '感情の解放と自己規律のバランスを。',
        10: '新しい感情表現と従来の作法を。',
        11: '感情的な直感と論理的な判断を。',
        12: '創造的な感情表現と理性的な制御を。',
        13: '感情の変容と理性的な成長を。'
      }
    };

    final signCautions = cautions[sign];
    if (signCautions != null) {
      return signCautions[number] ?? '今日は特にバランスを意識した行動を心がけましょう。';
    }
    return '今日は特にバランスを意識した行動を心がけましょう。';
  }
}

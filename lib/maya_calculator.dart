class MayaCalculator {
  static const List<String> tzolkinDayNames = [
    'イミシュ',
    'イク',
    'アクバル',
    'カン',
    'チッチャン',
    'キミ',
    'マニク',
    'ラマト',
    'ムルク',
    'オク',
    'チュエン',
    'エブ',
    'ベン',
    'イシュ',
    'メン',
    'キブ',
    'カバン',
    'エツナブ',
    'カウアク',
    'アハウ',
  ];

  static const List<String> haabMonths = [
    'ポップ',
    'ウォ',
    'シップ',
    'ソッツ',
    'セク',
    'シュル',
    'ヤシュキン',
    'モル',
    'チェン',
    'ヤシュ',
    'サク',
    'ケー',
    'マク',
    'カンキン',
    'ムアン',
    'パシュ',
    'カヤブ',
    'クムク',
    'ウアイェブ',
  ];

  // ユリウス日からマヤ暦の日付を計算
  static Map<String, String> calculateMayaDate(DateTime date) {
    // ユリウス日の計算
    int jd = _calculateJulianDay(date);

    // マヤ暦元期（紀元前3114年8月11日）からの経過日数
    int daysFromMayaEpoch = jd - 584283;

    // ツォルキン暦の計算
    String tzolkin = _calculateTzolkin(daysFromMayaEpoch);

    // ハアブ暦の計算
    String haab = _calculateHaab(daysFromMayaEpoch);

    // ロングカウントの計算
    String longCount = _calculateLongCount(daysFromMayaEpoch);

    return {'tzolkin': tzolkin, 'haab': haab, 'longCount': longCount};
  }

  // ユリウス日の計算
  static int _calculateJulianDay(DateTime date) {
    int y = date.year;
    int m = date.month;
    int d = date.day;

    if (m <= 2) {
      y--;
      m += 12;
    }

    int a = y ~/ 100;
    int b = 2 - a + (a ~/ 4);

    return (365.25 * (y + 4716)).floor() +
        (30.6001 * (m + 1)).floor() +
        d +
        b -
        1524;
  }

  // ツォルキン暦の計算
  static String _calculateTzolkin(int days) {
    int number = (days + 4) % 13 + 1;
    int nameIndex = (days + 19) % 20;
    return '$number ${tzolkinDayNames[nameIndex]}';
  }

  // ハアブ暦の計算
  static String _calculateHaab(int days) {
    int dayOfYear = (days + 348) % 365;
    int month = dayOfYear ~/ 20;
    int day = dayOfYear % 20;
    return '$day ${haabMonths[month]}';
  }

  // ロングカウントの計算
  static String _calculateLongCount(int days) {
    int baktun = days ~/ 144000;
    days %= 144000;
    int katun = days ~/ 7200;
    days %= 7200;
    int tun = days ~/ 360;
    days %= 360;
    int uinal = days ~/ 20;
    int kin = days % 20;

    return '$baktun.$katun.$tun.$uinal.$kin';
  }
}

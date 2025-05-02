class MayaDate {
  final int dayNumber;
  final String daySign;

  MayaDate({
    required this.dayNumber,
    required this.daySign,
  });

  static MayaDate fromGregorian(DateTime date) {
    // マヤ暦の開始日（紀元前3114年8月11日）からの日数を計算
    final startDate = DateTime(-3114, 8, 11);
    final days = date.difference(startDate).inDays;

    // ツォルキン（260日周期）の計算
    final tzolkinDay = (days % 260) + 1;
    final dayNumber = ((tzolkinDay - 1) % 13) + 1;

    // 20の日付シンボル
    const daySigns = [
      'Imix',
      'Ik',
      'Akbal',
      'Kan',
      'Chicchan',
      'Cimi',
      'Manik',
      'Lamat',
      'Muluc',
      'Oc',
      'Chuen',
      'Eb',
      'Ben',
      'Ix',
      'Men',
      'Cib',
      'Caban',
      'Etznab',
      'Cauac',
      'Ahau'
    ];
    final daySign = daySigns[((tzolkinDay - 1) % 20)];

    return MayaDate(
      dayNumber: dayNumber,
      daySign: daySign,
    );
  }

  MayaDate addDays(int days) {
    final startDate = DateTime(-3114, 8, 11);
    final currentDays = startDate.difference(DateTime.now()).inDays;
    final newDate = DateTime.now().add(Duration(days: days));
    return MayaDate.fromGregorian(newDate);
  }
}

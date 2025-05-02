class DailyFortune {
  final DateTime date;
  final String energyLevel; // エネルギーレベル（1-13）
  final String daySign; // 日の印（20種類）
  final String fortuneText; // 運勢テキスト
  final List<String> luckyDirections; // ラッキーな方角
  final String compatibility; // 相性の良い日の印
  final String advice; // アドバイス

  DailyFortune({
    required this.date,
    required this.energyLevel,
    required this.daySign,
    required this.fortuneText,
    required this.luckyDirections,
    required this.compatibility,
    required this.advice,
  });

  Map<String, dynamic> toJson() {
    return {
      'date': date.toIso8601String(),
      'energyLevel': energyLevel,
      'daySign': daySign,
      'fortuneText': fortuneText,
      'luckyDirections': luckyDirections,
      'compatibility': compatibility,
      'advice': advice,
    };
  }

  factory DailyFortune.fromJson(Map<String, dynamic> json) {
    return DailyFortune(
      date: DateTime.parse(json['date']),
      energyLevel: json['energyLevel'],
      daySign: json['daySign'],
      fortuneText: json['fortuneText'],
      luckyDirections: List<String>.from(json['luckyDirections']),
      compatibility: json['compatibility'],
      advice: json['advice'],
    );
  }
}

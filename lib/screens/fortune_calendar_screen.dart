import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';
import '../providers/fortune_provider.dart';

class FortuneCalendarScreen extends StatefulWidget {
  const FortuneCalendarScreen({super.key});

  @override
  State<FortuneCalendarScreen> createState() => _FortuneCalendarScreenState();
}

class _FortuneCalendarScreenState extends State<FortuneCalendarScreen> {
  DateTime _getNextMonday() {
    final now = DateTime.now();
    final daysUntilMonday = (8 - now.weekday) % 7;
    return now.add(Duration(days: daysUntilMonday));
  }

  @override
  Widget build(BuildContext context) {
    final fortuneProvider = Provider.of<FortuneProvider>(context);
    final nextMonday = _getNextMonday();
    final weeklyFortune = fortuneProvider.getWeeklyFortune();

    return Scaffold(
      appBar: AppBar(
        title: const Text('1週間運勢カレンダー'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade100,
              Colors.white,
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Text(
                    '今週の運勢を確認して、\nより良い一週間を過ごしましょう。',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '次回更新: ${nextMonday.month}月${nextMonday.day}日（月）',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.deepPurple.shade200,
                          Colors.deepPurple.shade100,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '今週の運勢',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 16),
                          ...weeklyFortune.split('\n').map((line) {
                            if (line.isEmpty) {
                              return const SizedBox(height: 8);
                            }
                            if (line.startsWith('ラッキーカラー:') ||
                                line.startsWith('ラッキーナンバー:')) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4),
                                child: Text(
                                  line,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            }
                            if (line == 'アドバイス:' || line == '注意点:') {
                              return Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Text(
                                  line,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            }
                            return Text(
                              line,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

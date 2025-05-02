import 'package:flutter/material.dart';

class MayaCalendarInfoScreen extends StatelessWidget {
  const MayaCalendarInfoScreen({super.key});

  Widget _buildSection({
    required BuildContext context,
    required String title,
    required String content,
    required IconData icon,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 24),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('マヤ暦について'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          _buildSection(
            context: context,
            title: 'マヤ暦とは',
            content:
                'マヤ暦は古代マヤ文明で使用されていた暦法システムです。太陽の動きに基づく「ハアブ暦」（365日）と神聖な周期に基づく「ツォルキン暦」（260日）の2つの暦を組み合わせて使用します。これらの暦は52年周期で一致し、この周期を「カレンダーラウンド」と呼びます。',
            icon: Icons.calendar_today,
          ),
          _buildSection(
            context: context,
            title: '暦の種類',
            content: '''
• ツォルキン暦（神聖暦）：
  - 260日周期
  - 20種類の日の印と1-13の数字の組み合わせ
  - 人の運命や性格を示す神聖な暦

• ハアブ暦（太陽暦）：
  - 365日周期
  - 18ヶ月（各20日）+ 5日の追加期間
  - 農作業や季節の変化を示す実用的な暦''',
            icon: Icons.view_carousel,
          ),
          _buildSection(
            context: context,
            title: '時間の単位',
            content: '''
• キン：1日
• ウィナル：20日
• トゥン：360日
• カトゥン：7,200日（約20年）
• バクトゥン：144,000日（約394年）

これらの単位は、時間の長短だけでなく、それぞれが持つ意味や影響力も表しています。''',
            icon: Icons.access_time,
          ),
          _buildSection(
            context: context,
            title: '日の印（ナワル）',
            content: '''
20種類の日の印は、それぞれが固有の意味と特徴を持ちます：

1. イミッシュ：始まり、水、世界
2. イク：風、生命、霊
3. アクバル：夜、神秘、知恵
4. カン：種、豊穣、正義
5. チッカン：蛇、生命力
...

各日の印は、その日に生まれた人の性格や運命に影響を与えるとされています。''',
            icon: Icons.auto_awesome,
          ),
          _buildSection(
            context: context,
            title: 'エネルギーの数',
            content: '''
1から13までの数字は、それぞれ異なるエネルギーを表します：

1：目的、統一
2：両極性、挑戦
3：活性化、リズム
4：安定性、秩序
...

これらの数字は日の印と組み合わさり、その日の特質を決定します。''',
            icon: Icons.power,
          ),
          _buildSection(
            context: context,
            title: '暦の読み方',
            content: '''
マヤ暦の日付は以下の要素で構成されます：

1. 数字（1-13）
2. 日の印（20種類）
3. 月の位置（ハアブ暦）
4. 年の位置

これらの要素を組み合わせることで、その日の特質や影響を読み解くことができます。''',
            icon: Icons.menu_book,
          ),
          _buildSection(
            context: context,
            title: '実践的な活用',
            content: '''
マヤ暦は以下のような目的で活用できます：

• 自己理解：生年月日から自分の性質を理解
• 日々の過ごし方：各日の特質に合わせた活動の選択
• 相性判断：他者との相性や適切な協力時期の判断
• 計画立案：良い時期の選択や避けるべき時期の把握

日々の暮らしに活かすことで、より調和のとれた生活を送ることができます。''',
            icon: Icons.psychology,
          ),
        ],
      ),
    );
  }
}

class MayaCalendarBasicInfoScreen extends StatelessWidget {
  const MayaCalendarBasicInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('マヤ暦とは'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'マヤ暦の基本概念',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              'マヤ暦は、古代マヤ文明で使用されていた暦法です。\n\n'
              '太陽暦（ハアブ）と神聖暦（ツォルキン）の2つの暦を組み合わせて使用し、'
              'それぞれの暦が持つエネルギーを読み解くことで、その日の運勢やエネルギーを予測します。\n\n'
              'マヤ暦は単なる日付の記録だけでなく、宇宙のリズムやエネルギーの流れを理解するための'
              '重要なツールとして使用されていました。',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class HaabCalendarInfoScreen extends StatelessWidget {
  const HaabCalendarInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('太陽暦（ハアブ）'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '太陽暦の仕組み',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              '太陽暦は365日を1年とする暦で、18ヶ月（各20日）と5日の特別な期間で構成されています。\n\n'
              '各月は独自のエネルギーを持ち、その月の特徴や影響を表します。'
              'また、5日の特別な期間は「ウェイェブ」と呼ばれ、重要な転換期とされています。\n\n'
              '太陽暦は農業や季節の変化を予測するために使用され、'
              'マヤ文明の日常生活に深く根付いていました。',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class TzolkinCalendarInfoScreen extends StatelessWidget {
  const TzolkinCalendarInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('神聖暦（ツォルキン）'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '神聖暦の仕組み',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              '神聖暦は260日を1周期とする暦で、20の日の印と13の数字を組み合わせて使用します。\n\n'
              '日の印はそれぞれ異なるエネルギーや特性を持ち、数字はそのエネルギーの強さを表します。'
              'この組み合わせにより、260通りの異なるエネルギーが生まれます。\n\n'
              '神聖暦は主に儀式や占い、個人の運勢を読むために使用され、'
              'マヤ文明の精神的な側面を支える重要な要素でした。',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class DaySignsInfoScreen extends StatelessWidget {
  const DaySignsInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('日の印の意味'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '20種類の日の印',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              'マヤ暦では、20種類の日の印が存在し、それぞれが異なるエネルギーや特性を持っています：\n\n'
              '・赤い龍（イーミッシュ）：新しい始まり、創造性\n'
              '・白い風（イーク）：風、コミュニケーション\n'
              '・青い夜（アクバル）：夜、直感\n'
              '・黄色い種（カン）：種、創造性\n'
              '・赤い蛇（チークチャン）：蛇、変容\n'
              '・白い世界の橋渡し（キーミー）：死、再生\n'
              '・青い手（マニーク）：手、力\n'
              '・黄色い星（ラマト）：星、豊かさ\n'
              '・赤い月（ムールク）：月、浄化\n'
              '・白い犬（オク）：犬、愛\n'
              '・青い猿（チューエン）：猿、遊び\n'
              '・黄色い人（エブ）：人、成長\n'
              '・赤い空歩く人（ベン）：空歩く人、知識\n'
              '・白い魔法使い（イーシュ）：魔法使い、力\n'
              '・青い鷲（メン）：鷲、自由\n'
              '・黄色い戦士（キーブ）：戦士、再生\n'
              '・赤い地球（カバン）：地球、変革\n'
              '・白い鏡（エツナブ）：鏡、決断\n'
              '・青い嵐（カウアク）：嵐、浄化\n'
              '・黄色い太陽（アハウ）：太陽、完成',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class EnergyLevelsInfoScreen extends StatelessWidget {
  const EnergyLevelsInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('エネルギーレベル'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1から13までの数字の意味',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              'マヤ暦では、1から13までの数字がエネルギーレベルを表します：\n\n'
              '・1：新しい始まり\n'
              '・2：調和とバランス\n'
              '・3：創造性と表現\n'
              '・4：安定と基盤\n'
              '・5：変化と自由\n'
              '・6：愛と奉仕\n'
              '・7：内省と分析\n'
              '・8：成功と物質\n'
              '・9：完成と解放\n'
              '・10：新しい始まり\n'
              '・11：直感とインスピレーション\n'
              '・12：協力と統合\n'
              '・13：変容と再生',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

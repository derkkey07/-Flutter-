import 'package:flutter/material.dart';

class GuardianSpiritInfoScreen extends StatelessWidget {
  const GuardianSpiritInfoScreen({super.key});

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
        title: const Text('守護霊について'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: [
          _buildSection(
            context: context,
            title: '守護霊とは',
            content: '''マヤ暦における守護霊（ナワル）は、誕生日によって決定される特別な存在です。
            
• 20種類の守護霊が存在し、それぞれが固有の性質と力を持っています
• 生まれた日の印（ナワル）がその人の守護霊となります
• 守護霊は人生の道標となり、その人の才能や可能性を導きます''',
            icon: Icons.psychology,
          ),
          _buildSection(
            context: context,
            title: '守護霊の役割',
            content: '''守護霊は以下のような重要な役割を果たします：

1. 人生の方向性を示す
2. 潜在的な才能を引き出す
3. 精神的な成長をサポート
4. 危険から守護する
5. 直感力を高める
6. 人との縁を結ぶ''',
            icon: Icons.stars,
          ),
          _buildSection(
            context: context,
            title: '20種類の守護霊',
            content: '''各守護霊の基本的な性質：

1. イミッシュ：創造性、始まり、水の力
2. イク：コミュニケーション、風の力、変化
3. アクバル：精神性、夜の力、神秘
4. カン：豊かさ、種の力、実り
5. チッカン：変容、蛇の力、直感
6. キミ：死と再生、浄化、解放
7. マニク：完成、鹿の力、調和
8. ラマト：調和、星の力、美
9. ムルク：癒し、水の力、浄化
10. オク：導き、犬の力、忠実
...

それぞれの守護霊は、特定の元素や動物、自然現象と結びついています。''',
            icon: Icons.auto_awesome,
          ),
          _buildSection(
            context: context,
            title: '守護霊との関係',
            content: '''守護霊との関係を深めるには：

1. 自分の守護霊の特徴を理解する
2. 定期的に瞑想や祈りを行う
3. 守護霊の好む活動や場所を意識する
4. 感謝の気持ちを表現する
5. 守護霊の導きに従う
6. 信頼関係を築く''',
            icon: Icons.favorite,
          ),
          _buildSection(
            context: context,
            title: '守護霊の力',
            content: '''守護霊は以下のような力を持っています：

• 直感力：未来の出来事への洞察
• 創造力：新しいアイデアやビジョンの創出
• 治癒力：心身の癒しと回復
• 保護力：危険からの守護
• 導きの力：正しい選択への誘導
• 変容の力：精神的な成長の促進''',
            icon: Icons.flash_on,
          ),
          _buildSection(
            context: context,
            title: '日常生活での活用',
            content: '''守護霊の力を日常生活で活かす方法：

1. 重要な決定を行う際の指針として
2. 人間関係の改善に活用
3. 健康管理のサポートとして
4. キャリアの方向性の決定に
5. 精神的な成長の指標として
6. 日々の行動の選択に

守護霊の特性を理解し、その導きに従うことで、より充実した人生を送ることができます。''',
            icon: Icons.lightbulb,
          ),
          _buildSection(
            context: context,
            title: '相性と組み合わせ',
            content: '''守護霊同士の相性について：

• 相補的な関係：互いの特性を補完し合う組み合わせ
• 強化的な関係：似た特性を持ち、力を増幅させる組み合わせ
• 変容的な関係：互いに変化と成長をもたらす組み合わせ
• 調和的な関係：バランスの取れた関係を築ける組み合わせ

これらの相性を理解することで、より良い人間関係を築くことができます。''',
            icon: Icons.people,
          ),
        ],
      ),
    );
  }
}

class GuardianSpiritBasicScreen extends StatelessWidget {
  const GuardianSpiritBasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('守護霊とは'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '守護霊の基本概念',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              'マヤ暦では、誕生日によって決まる守護霊（ナワル）があると考えられています。\n\n'
              '守護霊は、その人の性格や運命に大きな影響を与え、人生の指針となる存在とされています。\n\n'
              'あなたの守護霊を知ることで、自分の強みや課題、人生の方向性をより深く理解することができます。',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class GuardianSpiritRoleScreen extends StatelessWidget {
  const GuardianSpiritRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('守護霊の役割'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '守護霊の主な役割',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              '守護霊には以下のような役割があります：\n\n'
              '・あなたの人生を見守り、導く\n'
              '・あなたの才能や可能性を引き出す\n'
              '・困難な時期に助言や励ましを与える\n'
              '・人生の重要な岐路で道しるべとなる\n'
              '・あなたの精神的な成長を支援する',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class GuardianSpiritRelationScreen extends StatelessWidget {
  const GuardianSpiritRelationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('守護霊との関係'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '守護霊との絆を深める',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              '守護霊との関係を深めるためには：\n\n'
              '・自分の守護霊の特性を理解する\n'
              '・日々の生活で守護霊を意識する\n'
              '・守護霊の導きに耳を傾ける\n'
              '・感謝の気持ちを持つ\n'
              '・定期的に瞑想や祈りの時間を持つ',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class GuardianSpiritPowerScreen extends StatelessWidget {
  const GuardianSpiritPowerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('守護霊の力'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '守護霊が持つ特別な力',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              '守護霊は以下のような力を持っています：\n\n'
              '・直感力の向上\n'
              '・創造性の発揮\n'
              '・問題解決能力の強化\n'
              '・精神的な安定\n'
              '・人間関係の調和\n'
              '・自己実現のサポート',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

class GuardianSpiritDailyScreen extends StatelessWidget {
  const GuardianSpiritDailyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('日常生活での活用'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '守護霊の力を活かす方法',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              '守護霊の力を日常生活で活用するには：\n\n'
              '・朝の時間に守護霊に挨拶する\n'
              '・重要な決定の前に守護霊に相談する\n'
              '・守護霊の特性に合った行動を心がける\n'
              '・守護霊からのメッセージに注意を払う\n'
              '・守護霊の教えを実践する',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

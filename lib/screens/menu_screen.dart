import 'package:flutter/material.dart';
import '../providers/user_provider.dart';
import 'fortune_screen.dart';
import 'maya_calendar_info_screen.dart';
import 'guardian_spirit_info_screen.dart';
import 'maya_quiz_screen.dart';
import 'fortune_calendar_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('メニュー'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildMenuItem(
            context: context,
            title: '今日の運勢',
            subtitle: '今日のあなたの運勢を占います',
            icon: Icons.auto_awesome,
            isPremium: false,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FortuneScreen(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          _buildMenuItem(
            context: context,
            title: 'マヤ暦について',
            subtitle: 'マヤ暦の基本的な知識',
            icon: Icons.calendar_today,
            isPremium: false,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MayaCalendarInfoScreen(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          _buildMenuItem(
            context: context,
            title: '守護霊について',
            subtitle: '守護霊の基本的な知識',
            icon: Icons.psychology,
            isPremium: false,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GuardianSpiritInfoScreen(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          _buildMenuItem(
            context: context,
            title: 'マヤ暦クイズ',
            subtitle: 'マヤ暦の知識を深めましょう',
            icon: Icons.quiz,
            isPremium: false,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MayaQuizScreen(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          _buildMenuItem(
            context: context,
            title: '1週間運勢カレンダー',
            subtitle: '1週間の運勢を確認できます',
            icon: Icons.calendar_month,
            isPremium: true,
            isLocked: !userProvider.hasPremiumAccess,
            onTap: () {
              if (userProvider.hasPremiumAccess) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FortuneCalendarScreen(),
                  ),
                );
              } else {
                _showPremiumDialog(context);
              }
            },
          ),
          const SizedBox(height: 16),
          _buildMenuItem(
            context: context,
            title: '相性診断',
            subtitle: '誕生日から相性を診断します',
            icon: Icons.favorite,
            isPremium: true,
            isLocked: !userProvider.hasPremiumAccess,
            onTap: () {
              if (userProvider.hasPremiumAccess) {
                // プレミアム機能へ遷移
              } else {
                _showPremiumDialog(context);
              }
            },
          ),
          if (kDebugMode) ...[
            const SizedBox(height: 16),
            _buildMenuItem(
              context: context,
              title: '開発者用: プレミアム機能',
              subtitle:
                  userProvider.hasPremiumAccess ? 'プレミアム機能を無効化' : 'プレミアム機能を有効化',
              icon: Icons.developer_mode,
              isPremium: false,
              onTap: () async {
                if (userProvider.hasPremiumAccess) {
                  await userProvider.disablePremiumForDevelopment();
                } else {
                  await userProvider.enablePremiumForDevelopment();
                }
              },
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required BuildContext context,
    required String title,
    required String subtitle,
    required IconData icon,
    required bool isPremium,
    bool isLocked = false,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(
          icon,
          color: isLocked ? Colors.grey : Theme.of(context).colorScheme.primary,
          size: 32,
        ),
        title: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isLocked
                    ? Colors.grey
                    : Theme.of(context).colorScheme.primary,
              ),
            ),
            if (isPremium) ...[
              const SizedBox(width: 8),
              Icon(
                isLocked ? Icons.lock : Icons.star,
                color: isLocked ? Colors.grey : Colors.amber,
                size: 20,
              ),
            ],
          ],
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: isLocked ? Colors.grey : null,
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }

  void _showPremiumDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.star,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'プレミアム機能',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              const SizedBox(height: 16),
              Text(
                'より深くマヤ暦の世界を体験',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              _buildFeatureItem(
                context,
                Icons.calendar_month,
                '1週間の運勢カレンダー',
                '先の運勢を確認できます',
              ),
              const SizedBox(height: 16),
              _buildFeatureItem(
                context,
                Icons.favorite,
                '相性診断',
                '誕生日から相性を診断',
              ),
              const SizedBox(height: 16),
              _buildFeatureItem(
                context,
                Icons.block,
                '広告の非表示',
                'より快適な体験を',
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // TODO: 課金画面への遷移を実装
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'プレミアムに登録',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'あとで',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureItem(
    BuildContext context,
    IconData icon,
    String title,
    String description,
  ) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

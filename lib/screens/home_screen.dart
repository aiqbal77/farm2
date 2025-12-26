import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Dairy Farm Investments'),
        backgroundColor: CupertinoColors.systemGreen,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Farm2',
                    style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Invest in premium dairy livestock and earn regular income',
                    style: CupertinoTheme.of(context).textTheme.textStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  _buildFeatureCard(
                    icon: CupertinoIcons.heart,
                    title: 'Animal Profiles',
                    subtitle: 'View detailed profiles of dairy cows with health metrics and production history',
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureCard(
                    icon: CupertinoIcons.money_dollar,
                    title: 'Invest in Livestock',
                    subtitle: 'Purchase shares starting from 10% in premium dairy animals',
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureCard(
                    icon: CupertinoIcons.chart_bar,
                    title: 'Performance Reports',
                    subtitle: 'Track milk production, health metrics, and investment returns',
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureCard(
                    icon: CupertinoIcons.doc,
                    title: 'Income Statements',
                    subtitle: 'Receive regular reports with income distribution and admin fees',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return CupertinoButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          color: CupertinoColors.systemBackground,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: CupertinoColors.systemGrey.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              icon,
              size: 32,
              color: CupertinoColors.systemGreen,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: CupertinoColors.secondaryLabel,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              CupertinoIcons.chevron_forward,
              size: 20,
              color: CupertinoColors.systemGrey,
            ),
          ],
        ),
      ),
    );
  }
}
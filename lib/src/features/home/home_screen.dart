import 'package:flutter/material.dart';

import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';
import '../../core/widgets/empty_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.hasData = true});

  final bool hasData;

  @override
  Widget build(BuildContext context) {
    if (!hasData) {
      return const EmptyState(
        title: 'No meals planned',
        description: 'Generate your first AI week plan to unlock smart grocery and tracking.',
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Good Morning 👋', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        const AppCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today Summary'),
              SizedBox(height: 8),
              Text('1,420 / 2,100 kcal • 2 / 4 meals'),
            ],
          ),
        ),
        const SizedBox(height: 12),
        AppButton(label: 'Optimize Week (AI)', onPressed: () {}),
        const SizedBox(height: 12),
        const AppCard(child: Text('Pantry Alert: 2 ingredients expiring in 2 days')),
      ],
    );
  }
}

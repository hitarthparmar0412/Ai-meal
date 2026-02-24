import 'package:flutter/material.dart';

import '../../core/widgets/app_card.dart';
import '../../core/widgets/empty_state.dart';

class PantryScreen extends StatelessWidget {
  const PantryScreen({super.key, this.items = const ['Milk • expiring tomorrow', 'Spinach • expiring in 2 days']});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const EmptyState(
        title: 'No pantry items',
        description: 'Add ingredients to unlock expiry alerts and smart reuse recommendations.',
        actionLabel: 'Add Ingredient',
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Pantry Management', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        const AppCard(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.notification_important_outlined),
            title: Text('Expiry intelligence enabled'),
            subtitle: Text('2 items need action this week'),
          ),
        ),
        ...items.map(
          (item) => AppCard(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(item),
              subtitle: const Text('Reuse suggestion available'),
              trailing: const Icon(Icons.restaurant_menu_rounded),
            ),
          ),
        ),
      ],
    );
  }
}

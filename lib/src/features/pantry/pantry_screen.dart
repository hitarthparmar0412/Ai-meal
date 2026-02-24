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
        description: 'Add pantry ingredients to get expiry alerts and smart reuse suggestions.',
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Pantry Management', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        ...items.map((item) => AppCard(child: ListTile(title: Text(item)))),
      ],
    );
  }
}

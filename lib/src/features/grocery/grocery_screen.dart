import 'package:flutter/material.dart';

import '../../core/widgets/app_card.dart';
import '../../core/widgets/empty_state.dart';
import '../../services/mock_data_service.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = MockDataService.groceries();

    if (items.isEmpty) {
      return const EmptyState(
        title: 'No grocery items',
        description: 'Your grocery list will auto-generate from your meal planner.',
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Grocery Automation', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        ...items.map(
          (item) => AppCard(
            child: ListTile(
              leading: Checkbox(value: item.isDone, onChanged: (_) {}),
              title: Text(item.name),
              subtitle: Text(item.category),
            ),
          ),
        ),
      ],
    );
  }
}

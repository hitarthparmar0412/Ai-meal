import 'package:flutter/material.dart';

import '../../core/widgets/app_button.dart';
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
        description: 'Plan meals first to auto-generate categorized grocery lists.',
        actionLabel: 'Go to Planner',
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Smart Grocery', style: Theme.of(context).textTheme.headlineSmall),
        Text('Auto-synced from planner and pantry', style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 12),
        const AppCard(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.sync_rounded),
            title: Text('Last AI sync: 2 min ago'),
            subtitle: Text('6 items optimized using pantry inventory'),
          ),
        ),
        const SizedBox(height: 10),
        ...items.map(
          (item) => AppCard(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Checkbox(value: item.isDone, onChanged: (_) {}),
              title: Text(item.name),
              subtitle: Text('${item.category} • Suggested qty: 1'),
              trailing: const Icon(Icons.chevron_right_rounded),
            ),
          ),
        ),
        const SizedBox(height: 12),
        AppButton(label: 'Add Manual Item', onPressed: () {}, type: AppButtonType.secondary, icon: Icons.add_rounded),
      ],
    );
  }
}

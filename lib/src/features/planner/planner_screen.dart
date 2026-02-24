import 'package:flutter/material.dart';

import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';
import '../../services/mock_data_service.dart';

class PlannerScreen extends StatelessWidget {
  const PlannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final meals = MockDataService.weeklyMeals();

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            Expanded(child: Text('Weekly Planner', style: Theme.of(context).textTheme.headlineSmall)),
            AppButton(label: 'AI Week', onPressed: () {}, type: AppButtonType.secondary, icon: Icons.auto_awesome),
          ],
        ),
        const SizedBox(height: 10),
        const AppCard(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Chip(label: Text('Mon')), Chip(label: Text('Tue')), Chip(label: Text('Wed')), Chip(label: Text('Thu')),
              Chip(label: Text('Fri')), Chip(label: Text('Sat')), Chip(label: Text('Sun')),
            ],
          ),
        ),
        const SizedBox(height: 12),
        ...meals.map(
          (meal) => AppCard(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(child: Icon(Icons.restaurant_menu_rounded)),
              title: Text('${meal.day} • ${meal.slot}'),
              subtitle: Text('${meal.name} • AI balanced for goal'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('${meal.calories} kcal', style: const TextStyle(fontWeight: FontWeight.w700)),
                  const SizedBox(height: 2),
                  const Text('Edit', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

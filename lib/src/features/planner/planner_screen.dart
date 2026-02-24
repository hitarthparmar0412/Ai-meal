import 'package:flutter/material.dart';

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
        Text('Weekly Planner', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        ...meals.map(
          (meal) => AppCard(
            child: ListTile(
              title: Text('${meal.day} • ${meal.slot}'),
              subtitle: Text(meal.name),
              trailing: Text('${meal.calories} kcal'),
            ),
          ),
        ),
      ],
    );
  }
}

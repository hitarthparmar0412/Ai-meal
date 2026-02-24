import 'package:flutter/material.dart';

import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recipes = const ['AI High Protein Pasta', 'Keto Salmon Bowl', 'Vegan Curry'];

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Recipes', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 10),
        const TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search_rounded), hintText: 'Search AI and custom recipes')),
        const SizedBox(height: 10),
        const Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            Chip(label: Text('Veg')),
            Chip(label: Text('Keto')),
            Chip(label: Text('High Protein')),
            Chip(label: Text('Budget')),
          ],
        ),
        const SizedBox(height: 12),
        ...recipes.map(
          (recipe) => AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(recipe),
                  subtitle: const Text('520 kcal • 38g protein • 20 min'),
                  trailing: const Icon(Icons.chevron_right_rounded),
                ),
                AppButton(label: 'Add to Plan', onPressed: () {}, type: AppButtonType.ghost),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

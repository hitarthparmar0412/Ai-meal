import 'package:flutter/material.dart';

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
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: const [
            Chip(label: Text('Veg')),
            Chip(label: Text('Keto')),
            Chip(label: Text('High Protein')),
          ],
        ),
        const SizedBox(height: 12),
        ...recipes.map((recipe) => AppCard(child: ListTile(title: Text(recipe), subtitle: const Text('Tap to view details')))),
      ],
    );
  }
}

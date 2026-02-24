import 'package:flutter/material.dart';

import '../../core/widgets/app_card.dart';
import '../../core/widgets/macro_ring.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Nutrition Tracking', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        const AppCard(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MacroRing(label: 'Protein', progress: .7),
              MacroRing(label: 'Carbs', progress: .55),
              MacroRing(label: 'Fat', progress: .42),
            ],
          ),
        ),
      ],
    );
  }
}

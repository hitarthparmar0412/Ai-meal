import 'package:flutter/material.dart';

import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personalize Your AI Plan')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const AppCard(
            child: Text(
              'Tell us your goals, food style, budget and allergies. AI will optimize every weekly plan around this profile.',
            ),
          ),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Dietary preference (veg, keto, mixed)')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Health goal (lose / maintain / gain)')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Cuisine preference')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Budget sensitivity')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Allergies and restrictions')),
          const SizedBox(height: 20),
          AppButton(label: 'Complete Onboarding', onPressed: () {}, icon: Icons.check_circle_outline_rounded),
        ],
      ),
    );
  }
}

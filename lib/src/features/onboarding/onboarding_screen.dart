import 'package:flutter/material.dart';

import '../../core/widgets/app_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personalize Your AI Plan')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TextField(decoration: InputDecoration(labelText: 'Diet preference')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Health goal')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Cuisine preference')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Budget sensitivity')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Allergies')),
          const SizedBox(height: 20),
          AppButton(label: 'Complete onboarding', onPressed: () {}),
        ],
      ),
    );
  }
}

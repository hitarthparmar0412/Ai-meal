import 'package:flutter/material.dart';

import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';
import '../../core/widgets/empty_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.hasData = true});

  final bool hasData;

  @override
  Widget build(BuildContext context) {
    if (!hasData) {
      return const EmptyState(
        title: 'No meals planned',
        description: 'Generate your first AI week plan to unlock grocery automation and macro tracking.',
        actionLabel: 'Generate AI Week',
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Good Morning, Alex 👋', style: Theme.of(context).textTheme.headlineSmall),
        Text('Your food intelligence center is ready.', style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 14),
        const AppCard(
          gradient: LinearGradient(colors: [Color(0xFF6D5CFF), Color(0xFF2DD4BF)]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today Summary', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16)),
              SizedBox(height: 8),
              Text('1,420 / 2,100 kcal', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w800)),
              SizedBox(height: 4),
              Text('2 of 4 meals logged • 68% target', style: TextStyle(color: Colors.white70)),
            ],
          ),
        ),
        const SizedBox(height: 12),
        AppButton(label: 'Optimize Week With AI', onPressed: () {}, icon: Icons.auto_awesome_rounded),
        const SizedBox(height: 12),
        const AppCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pantry Alerts', style: TextStyle(fontWeight: FontWeight.w700)),
              SizedBox(height: 10),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(child: Icon(Icons.access_time_rounded)),
                title: Text('Milk expires tomorrow'),
                subtitle: Text('Suggested reuse: High-protein overnight oats'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        const AppCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Quick Actions', style: TextStyle(fontWeight: FontWeight.w700)),
              SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  Chip(label: Text('Add Meal')),
                  Chip(label: Text('Open Pantry')),
                  Chip(label: Text('Smart Grocery Sync')),
                  Chip(label: Text('Generate Recipe')),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../core/widgets/app_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Profile & Preferences', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        const AppCard(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(child: Icon(Icons.person_rounded)),
            title: Text('Alex Johnson'),
            subtitle: Text('Goal: Lean gain • Premium plan'),
          ),
        ),
        const AppCard(child: ListTile(title: Text('Calorie Target'), subtitle: Text('2,100 kcal/day'), trailing: Icon(Icons.tune_rounded))),
        const AppCard(child: ListTile(title: Text('Dietary Preference'), subtitle: Text('High protein, low sugar'))),
        const AppCard(child: ListTile(title: Text('Language'), subtitle: Text('English (future multi-language ready)'))),
        const AppCard(child: ListTile(title: Text('Subscription'), subtitle: Text('Premium yearly • renews on 12 Jan 2027'))),
      ],
    );
  }
}

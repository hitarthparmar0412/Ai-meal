import 'package:flutter/material.dart';

import '../../core/widgets/app_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Profile', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 12),
        const AppCard(child: ListTile(title: Text('Subscription'), subtitle: Text('Premium'))),
        const AppCard(child: ListTile(title: Text('Calorie Target'), subtitle: Text('2,100 kcal'))),
        const AppCard(child: ListTile(title: Text('Language'), subtitle: Text('English'))),
      ],
    );
  }
}

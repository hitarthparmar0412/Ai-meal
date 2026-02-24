import 'package:flutter/material.dart';

import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';

class PaywallScreen extends StatelessWidget {
  const PaywallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upgrade to Premium')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const AppCard(child: Text('Free: Limited AI • Basic tracking')),
          const AppCard(child: Text('Premium: Unlimited AI • Scanner • Pantry optimization • Insights')),
          const SizedBox(height: 12),
          AppButton(label: 'Start Premium', onPressed: () {}),
        ],
      ),
    );
  }
}

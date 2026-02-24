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
          const AppCard(
            gradient: LinearGradient(colors: [Color(0xFF6D5CFF), Color(0xFF2DD4BF)]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Premium Intelligence', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w800)),
                SizedBox(height: 6),
                Text('Unlimited AI plans, scanner access, pantry optimization and advanced insights.', style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const AppCard(child: Text('Free Plan\n• Limited AI generation\n• Manual planner\n• Basic tracking')),
          const AppCard(child: Text('Premium Plan\n• Unlimited AI generation\n• Barcode + image scanner\n• Pantry optimization\n• Advanced insights')),
          const SizedBox(height: 12),
          AppButton(label: 'Start Premium', onPressed: () {}, icon: Icons.workspace_premium_rounded),
        ],
      ),
    );
  }
}

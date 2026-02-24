import 'package:flutter/material.dart';

import '../../core/widgets/app_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome to AI Meal')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            const Text('Plan, track, scan and optimize your food life.'),
            const SizedBox(height: 24),
            AppButton(label: 'Continue with Google', onPressed: () {}),
            const SizedBox(height: 12),
            const AppButton(label: 'Continue with Email', onPressed: null, type: AppButtonType.secondary),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

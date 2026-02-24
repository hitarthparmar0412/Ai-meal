import 'package:flutter/material.dart';

import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              const AppCard(
                gradient: LinearGradient(colors: [Color(0xFF6D5CFF), Color(0xFF2DD4BF)]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('AI Meal', style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w800)),
                    SizedBox(height: 8),
                    Text('Plan, track, scan and optimize your food life in one intelligent system.', style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              AppButton(label: 'Continue with Google', onPressed: () {}, icon: Icons.g_mobiledata_rounded),
              const SizedBox(height: 12),
              AppButton(label: 'Continue with Email', onPressed: () {}, type: AppButtonType.secondary, icon: Icons.email_outlined),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

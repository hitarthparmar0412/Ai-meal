import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/widgets/app_button.dart';
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
        Text('Live calories, macros and food log timeline', style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 12),
        const AppCard(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MacroRing(label: 'Protein', progress: .72, color: AppColors.primary),
              MacroRing(label: 'Carbs', progress: .61, color: AppColors.secondary),
              MacroRing(label: 'Fat', progress: .43, color: AppColors.warning),
            ],
          ),
        ),
        const SizedBox(height: 12),
        const AppCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today Log', style: TextStyle(fontWeight: FontWeight.w700)),
              SizedBox(height: 10),
              ListTile(contentPadding: EdgeInsets.zero, title: Text('Breakfast • Protein Oats'), trailing: Text('420 kcal')),
              ListTile(contentPadding: EdgeInsets.zero, title: Text('Lunch • Chicken Bowl'), trailing: Text('640 kcal')),
              ListTile(contentPadding: EdgeInsets.zero, title: Text('Snack • Greek Yogurt'), trailing: Text('210 kcal')),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: AppButton(label: 'Add Manual Entry', onPressed: () {}, type: AppButtonType.secondary)),
            const SizedBox(width: 8),
            Expanded(child: AppButton(label: 'Scan Food', onPressed: () {}, icon: Icons.qr_code_scanner_rounded)),
          ],
        ),
      ],
    );
  }
}

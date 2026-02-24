import 'package:flutter/material.dart';

import '../../core/widgets/app_button.dart';
import '../../core/widgets/app_card.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food Scanner')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Expanded(
              child: AppCard(
                child: Center(child: Text('Camera overlay placeholder\n(Barcode + Image recognition)')),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: AppButton(label: 'Scan Barcode', onPressed: () {})),
                const SizedBox(width: 8),
                Expanded(child: AppButton(label: 'Capture Food', onPressed: () {}, type: AppButtonType.secondary)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

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
            Expanded(
              child: AppCard(
                gradient: LinearGradient(
                  colors: [Colors.black.withValues(alpha: .85), const Color(0xFF1F2937)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                child: Stack(
                  children: [
                    const Center(
                      child: Text(
                        'Camera overlay\nBarcode + Image AI Detection',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 210,
                        width: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(color: Colors.white70, width: 2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(child: AppButton(label: 'Scan Barcode', onPressed: () {}, icon: Icons.qr_code_rounded)),
                const SizedBox(width: 8),
                Expanded(
                  child: AppButton(
                    label: 'Capture Food',
                    onPressed: () {},
                    type: AppButtonType.secondary,
                    icon: Icons.camera_alt_outlined,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

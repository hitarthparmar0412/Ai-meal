import 'package:flutter/material.dart';

class MacroRing extends StatelessWidget {
  const MacroRing({required this.label, required this.progress, super.key});

  final String label;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 72,
          width: 72,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(value: progress, strokeWidth: 8),
              Center(child: Text('${(progress * 100).round()}%')),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

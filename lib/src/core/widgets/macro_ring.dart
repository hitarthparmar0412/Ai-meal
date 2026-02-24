import 'package:flutter/material.dart';

class MacroRing extends StatelessWidget {
  const MacroRing({required this.label, required this.progress, required this.color, super.key});

  final String label;
  final double progress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 86,
          width: 86,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(value: 1, strokeWidth: 8, color: color.withValues(alpha: .18)),
              CircularProgressIndicator(value: progress, strokeWidth: 8, color: color),
              Center(
                child: Text(
                  '${(progress * 100).round()}%',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}

import 'package:flutter/material.dart';

enum AppButtonType { primary, secondary, ghost }

class AppButton extends StatelessWidget {
  const AppButton({
    required this.label,
    required this.onPressed,
    this.type = AppButtonType.primary,
    this.icon,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final AppButtonType type;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final text = icon == null
        ? Text(label)
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [Icon(icon, size: 18), const SizedBox(width: 8), Text(label)],
          );

    switch (type) {
      case AppButtonType.primary:
        return FilledButton(onPressed: onPressed, child: text);
      case AppButtonType.secondary:
        return OutlinedButton(onPressed: onPressed, child: text);
      case AppButtonType.ghost:
        return TextButton(onPressed: onPressed, child: text);
    }
  }
}

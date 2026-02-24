import 'package:flutter/material.dart';

enum AppButtonType { primary, secondary, ghost }

class AppButton extends StatelessWidget {
  const AppButton({
    required this.label,
    required this.onPressed,
    this.type = AppButtonType.primary,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final AppButtonType type;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AppButtonType.primary:
        return FilledButton(onPressed: onPressed, child: Text(label));
      case AppButtonType.secondary:
        return OutlinedButton(onPressed: onPressed, child: Text(label));
      case AppButtonType.ghost:
        return TextButton(onPressed: onPressed, child: Text(label));
    }
  }
}

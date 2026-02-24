import 'package:flutter/material.dart';

import 'app_button.dart';
import 'app_card.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({
    required this.title,
    required this.description,
    this.actionLabel,
    this.onAction,
    super.key,
  });

  final String title;
  final String description;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: AppCard(
          gradient: const LinearGradient(
            colors: [Color(0xFF6D5CFF), Color(0xFF2DD4BF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.auto_awesome_rounded, size: 42, color: Colors.white),
              const SizedBox(height: 12),
              Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white)),
              const SizedBox(height: 8),
              Text(description, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white70)),
              if (actionLabel != null) ...[
                const SizedBox(height: 16),
                AppButton(
                  label: actionLabel!,
                  onPressed: onAction,
                  type: AppButtonType.secondary,
                  icon: Icons.flash_on_rounded,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

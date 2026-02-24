import 'package:flutter/material.dart';

import '../../core/widgets/empty_state.dart';

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      const EmptyState(title: 'No internet', description: 'Please check your connection and try again.');
}

class AiFailedScreen extends StatelessWidget {
  const AiFailedScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      const EmptyState(title: 'AI failed', description: 'We could not generate a plan. Please retry.');
}

class SubscriptionExpiredScreen extends StatelessWidget {
  const SubscriptionExpiredScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      const EmptyState(title: 'Subscription expired', description: 'Renew premium to continue AI-powered features.');
}

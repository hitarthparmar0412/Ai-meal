import 'package:flutter/material.dart';

import '../core/constants/app_strings.dart';
import '../core/theme/app_theme.dart';
import '../features/grocery/grocery_screen.dart';
import '../features/home/home_screen.dart';
import '../features/planner/planner_screen.dart';
import '../features/profile/profile_screen.dart';
import '../features/scanner/scanner_screen.dart';
import '../features/track/track_screen.dart';

class AiMealApp extends StatelessWidget {
  const AiMealApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      home: const MainShell(),
    );
  }
}

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _current = 0;

  final screens = const [
    HomeScreen(),
    PlannerScreen(),
    TrackScreen(),
    GroceryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[_current]),
      floatingActionButton: _current == 2
          ? FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ScannerScreen()),
                );
              },
              child: const Icon(Icons.qr_code_scanner),
            )
          : null,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _current,
        onDestinationSelected: (index) => setState(() => _current = index),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.calendar_month_outlined), label: 'Planner'),
          NavigationDestination(icon: Icon(Icons.monitor_heart_outlined), label: 'Track'),
          NavigationDestination(icon: Icon(Icons.shopping_cart_outlined), label: 'Grocery'),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}

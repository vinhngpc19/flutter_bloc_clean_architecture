import 'package:flutter/material.dart';
import 'package:forecast/presentation/screens/profile_page.dart';
import 'package:forecast/routers/app_router.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = User(name: 'Vinh Ng', email: 'vinhng.pc19@gmail.com');

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is Settings Page', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () => context.push(
                AppRouter.profilePage,
                extra: user,
              ),
              child: const Text('View Profile Page'),
            ),
          ],
        ),
      ),
    );
  }
}

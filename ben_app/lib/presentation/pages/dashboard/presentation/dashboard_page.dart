import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('dashboard'),
      ),
    );
  }
}

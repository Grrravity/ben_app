import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return const MainScaffold(
      appBar: MainAppBar(
        title: 'Accueil',
        hasLogout: true,
        hasLeading: true,
      ),
      body: Center(
        child: Text('dashboard'),
      ),
    );
  }
}

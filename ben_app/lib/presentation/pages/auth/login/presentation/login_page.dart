import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:ben_app/presentation/widgets/layout/custom_scaffold.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return const MainScaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Text('Hello ben :)'),
      ),
    );
  }
}

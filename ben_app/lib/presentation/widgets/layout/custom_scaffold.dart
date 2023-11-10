import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/presentation/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({
    super.key,
    this.appBar,
    required this.body,
  });

  final MainAppBar? appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      appBar: appBar != null
          ? PreferredSize(
              preferredSize: const Size(double.maxFinite, 60),
              child: appBar!,
            )
          : null,
      body: body,
    );
  }
}

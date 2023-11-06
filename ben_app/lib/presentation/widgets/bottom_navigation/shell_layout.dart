import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ben_app/presentation/shell_destination.dart';
import 'package:ben_app/presentation/widgets/bottom_navigation/tab_icon.dart';

class ShellLayout extends StatelessWidget {
  const ShellLayout({
    super.key,
    required this.currentChild,
  });

  final Widget currentChild;

  int _computeCurrentIndex(BuildContext context) {
    final router = GoRouterState.of(context);
    final location = router.uri.toString();

    return math.max(
      0,
      ShellDestinations.values.indexWhere(
        (destination) =>
            router.namedLocation(destination.routeName) == location,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = _computeCurrentIndex(context);

    final borderRadius = BorderRadius.only(
      topRight: Radius.circular(24),
      topLeft: Radius.circular(24),
    );

    return Scaffold(
      body: currentChild,
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(borderRadius: borderRadius),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: BottomNavigationBar(
            selectedFontSize: 0,
            unselectedFontSize: 0,
            items: ShellDestinations.values
                .map(
                  (destination) => BottomNavigationBarItem(
                    icon: TabIcon(
                      icon: destination.icon,
                      label: destination.label,
                    ),
                    activeIcon: TabIcon(
                      icon: destination.icon,
                      label: destination.label,
                      isSelected: true,
                    ),
                    label: '',
                  ),
                )
                .toList(),
            onTap: (index) => GoRouter.of(context).goNamed(
              ShellDestinations.values[index].routeName,
            ),
            currentIndex: currentIndex,
          ),
        ),
      ),
    );
  }
}

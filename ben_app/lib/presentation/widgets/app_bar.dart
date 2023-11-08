import 'package:ben_app/core/extension/extension_export.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
    this.isNavigation = false,
  });

  final bool isNavigation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: context.theme.shadowColor,
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          if (isNavigation)
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: InkWell(
                    onTap: () => context.pop(),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Theme.of(context).iconTheme.color,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ],
            )
          else
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(4),
                  child: Icon(Icons.menu, size: 28),
                ),
              ),
            ),
          const Spacer(),
          Text('dqdqs'),
          const Spacer(),
          ResponsiveVisibility(
            visible: false,
            visibleConditions: [
              Condition.largerThan(value: MOBILE),
            ],
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(4),
                  child: Icon(Icons.create, size: 28),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

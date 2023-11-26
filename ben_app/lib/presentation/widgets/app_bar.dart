import 'package:ben_app/core/extension/extension_export.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/domain/usecase/session_usecase.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
    this.isNavigation = false,
    this.hasLogout = true,
    this.actions,
    required this.title,
  });

  final bool isNavigation, hasLogout;
  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final isSmallLayout = ResponsiveBreakpoints.of(context).smallerThan(TABLET);
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: context.theme.colorScheme.onTertiaryContainer,
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
                  padding: isSmallLayout
                      ? EdgeInsets.zero
                      : const EdgeInsets.only(left: 40),
                  child: InkWell(
                    onTap: () => context.pop(),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: context.theme.colorScheme.tertiaryContainer,
                        size: 28,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          SizedBox(
            width: isNavigation
                ? isSmallLayout
                    ? 5
                    : 20
                : isSmallLayout
                    ? 25
                    : 95,
          ),
          Text(title, style: context.theme.primaryTextTheme.titleLarge),
          const Spacer(),
          if (actions != null || hasLogout)
            Row(
              children: [
                if (actions != null) ...actions!,
                if (hasLogout)
                  Padding(
                    padding: isSmallLayout
                        ? EdgeInsets.zero
                        : const EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: () => getIt<SessionUsecase>().logOut(),
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        child: Icon(
                          Icons.logout,
                          size: 28,
                          color: context.theme.colorScheme.tertiaryContainer,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}

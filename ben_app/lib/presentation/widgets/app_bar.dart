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
    this.hasLeading = true,
    required this.title,
  });

  final bool isNavigation, hasLogout, hasLeading;
  final String title;

  @override
  Widget build(BuildContext context) {
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
          if (hasLeading)
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
                          color: context.theme.colorScheme.tertiaryContainer,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            else
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Icon(
                      Icons.menu,
                      size: 28,
                      color: context.theme.colorScheme.tertiaryContainer,
                    ),
                  ),
                ),
              ),
          const SizedBox(
            width: 40,
          ),
          Text(title, style: context.theme.primaryTextTheme.titleLarge),
          const Spacer(),
          if (hasLogout)
            ResponsiveVisibility(
              visible: false,
              visibleConditions: [
                Condition.equals(value: null, name: DESKTOP),
              ],
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
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
            ),
        ],
      ),
    );
  }
}

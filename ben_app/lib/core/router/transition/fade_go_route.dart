import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage<T> fadeTransition<T>(
  BuildContext context,
  GoRouterState state,
  Widget child,
) {
  return CustomTransitionPage<T>(
    /// This `UniqueKey` allows to refresh the pages when we go back
    /// or use `.goNamed`, or `.pushNamed`
    key: UniqueKey(),
    child: child,
    transitionsBuilder: (
      context,
      animation,
      secondaryAnimation,
      child,
    ) =>
        FadeTransition(opacity: animation, child: child),
  );
}

class FadeGoRoute extends GoRoute {
  FadeGoRoute({
    required super.name,
    required super.path,
    super.parentNavigatorKey,
    required Widget child,
    super.routes,
    super.redirect,
  }) : super(
          pageBuilder: (BuildContext context, GoRouterState state) {
            return fadeTransition(
              context,
              state,
              child,
            );
          },
        );
}

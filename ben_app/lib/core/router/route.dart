import 'dart:async';

import 'package:ben_app/core/controller/session/session_cubit.dart';
import 'package:ben_app/core/router/path.dart';
import 'package:ben_app/presentation/pages/auth/presentation/pages/forget_password_page.dart';
import 'package:ben_app/presentation/pages/auth/presentation/pages/login_page.dart';
import 'package:ben_app/presentation/pages/auth/presentation/pages/register_page.dart';
import 'package:ben_app/presentation/pages/auth/presentation/pages/reset_password_page.dart';
import 'package:ben_app/presentation/pages/dashboard/presentation/dashboard_page.dart';
import 'package:ben_app/presentation/pages/events/presentation/events_page.dart';
import 'package:ben_app/presentation/pages/legal/cgu_page.dart';
import 'package:ben_app/presentation/pages/legal/privacy_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

mixin RouterMixin<T extends StatefulWidget> on State<T> {
  final _parentKey = GlobalKey<NavigatorState>();

  late final router = GoRouter(
    initialLocation: Paths.login,
    navigatorKey: _parentKey,
    routes: [
      GoRoute(
        path: Paths.login,
        name: LoginPage.routeName,
        parentNavigatorKey: _parentKey,
        builder: (context, state) => const LoginPage(),
        routes: [
          GoRoute(
            path: Paths.forgetPassword,
            name: ForgetPasswordPage.routeName,
            parentNavigatorKey: _parentKey,
            builder: (context, state) => const ForgetPasswordPage(),
          ),
          GoRoute(
            path: Paths.resetPassword,
            name: ResetPasswordPage.routeName,
            parentNavigatorKey: _parentKey,
            builder: (context, state) => ResetPasswordPage(
              code: state.pathParameters[ResetPasswordPage.idPathParam]!,
            ),
          ),
          GoRoute(
            path: Paths.register,
            name: RegisterPage.routeName,
            parentNavigatorKey: _parentKey,
            builder: (context, state) => const RegisterPage(),
          ),
        ],
      ),
      GoRoute(
        path: Paths.dashboard,
        name: DashboardPage.routeName,
        parentNavigatorKey: _parentKey,
        builder: (context, state) => const DashboardPage(),
      ),
      GoRoute(
        path: Paths.events,
        name: EventsPage.routeName,
        parentNavigatorKey: _parentKey,
        builder: (context, state) => const EventsPage(),
      ),
      GoRoute(
        path: Paths.privacy,
        name: PrivacyPage.routeName,
        parentNavigatorKey: _parentKey,
        builder: (context, state) => const PrivacyPage(),
      ),
      GoRoute(
        path: Paths.cgu,
        name: CGUPage.routeName,
        parentNavigatorKey: _parentKey,
        builder: (context, state) => const CGUPage(),
      ),
    ],
    refreshListenable: StreamChangeNotifier(
      context.read<SessionCubit>().sessionUpdate,
    ),
    redirect: (context, state) {
      final location = state.uri.path;
      final sessionState = context.read<SessionCubit>().state;

      if (location.endsWith('privacy') || location.endsWith('cgu')) {
        return null;
      }

      /// Redirect to the login page if the user is not authenticated and is
      /// outside of an auth page
      if (!location.contains('auth')) {
        final res = sessionState.mapOrNull(
          anonymous: (_) => Paths.login,
        );
        if (res != null) return res;
      }

      if (location == Paths.login || location.endsWith(Paths.register)) {
        final res = sessionState.mapOrNull(
          authenticated: (authenticated) =>
              authenticated.hasProfile ? Paths.dashboard : Paths.login,
        );
        if (res != null) return res;
      }

      return null;
    },
  );
}

class StreamChangeNotifier<DataT> extends ChangeNotifier {
  StreamChangeNotifier(Stream<DataT> stream) {
    _subscription = stream.asBroadcastStream().listen((_) {
      notifyListeners();
    });
  }

  late final StreamSubscription<DataT> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

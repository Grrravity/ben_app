import 'dart:async';

import 'package:ben_app/core/controller/session/session_cubit.dart';
import 'package:ben_app/core/router/path.dart';
import 'package:ben_app/presentation/pages/auth/login/presentation/login_page.dart';
import 'package:ben_app/presentation/pages/dashboard/presentation/dashboard_page.dart';
import 'package:ben_app/presentation/pages/events/presentation/events_page.dart';
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
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: Paths.dashboard,
        name: DashboardPage.routeName,
        parentNavigatorKey: _parentKey,
        builder: (context, state) => DashboardPage(),
      ),
      GoRoute(
        path: Paths.events,
        name: EventsPage.routeName,
        parentNavigatorKey: _parentKey,
        builder: (context, state) => EventsPage(),
      ),
    ],
    refreshListenable: StreamChangeNotifier(
      context.read<SessionCubit>().sessionUpdate,
    ),
    redirect: (context, state) {
      final location = state.uri.path;
      final sessionState = context.read<SessionCubit>().state;

      /// Redirect to the login page if the user is not authenticated and is
      /// outside of an auth page
      if (!location.contains('auth')) {
        final res = sessionState.mapOrNull(
          anonymous: (_) => Paths.login,
        );
        if (res != null) return res;
      }

      if (location == Paths.login) {
        final res = sessionState.mapOrNull(
          authenticated: (authenticated) =>
              !authenticated.hasProfile ? Paths.dashboard : Paths.login,
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

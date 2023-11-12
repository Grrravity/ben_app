import 'package:ben_app/core/controller/env/env_cubit.dart';
import 'package:ben_app/core/controller/session/session_cubit.dart';
import 'package:ben_app/core/error/failure.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';
import 'package:ben_app/core/router/route.dart';
import 'package:ben_app/core/theme/theme.dart';
import 'package:ben_app/localization/l10n.dart';
import 'package:ben_app/presentation/widgets/layout/error_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppProvider extends StatefulWidget {
  const AppProvider({super.key});

  @override
  State<AppProvider> createState() => _MyAppState();
}

class _MyAppState extends State<AppProvider> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: EnvCubit.instance,
      child: BlocBuilder<EnvCubit, EnvState>(
        builder: (context, state) {
          return state.map(
            loaded: (_) => MultiBlocProvider(
              providers: [
                BlocProvider.value(
                  value: getIt<SessionCubit>(),
                ),
              ],
              child: const _App(),
            ),
            loading: (_) => const MaterialApp(
              home: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _App extends StatefulWidget {
  const _App();

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> with AppThemeMixin, RouterMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ben App',
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: lightTheme.materialTheme,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child ?? const ErrorLayout(Failure.widgetTreeError),
        breakpoints: const [
          Breakpoint(start: 0, end: 450, name: MOBILE),
          Breakpoint(start: 451, end: 800, name: TABLET),
          Breakpoint(start: 801, end: double.infinity, name: DESKTOP),
        ],
      ),
    );
  }
}

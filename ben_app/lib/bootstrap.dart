import 'dart:async';
import 'dart:developer';

import 'package:ben_app/core/config/firebase/firebase_init.dart';
import 'package:ben_app/core/config/flavor/flavor.dart';
import 'package:ben_app/core/controller/env/env_cubit.dart';
import 'package:ben_app/core/utils/logger.dart';
import 'package:ben_app/data/datasource/local/database/hydrated_bloc_storage.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  static Logger logger = Logger('MainObserver');

  String abstractString(dynamic value) {
    if (value.toString().length >= 200) {
      return '${value.toString().substring(0, 200)}\x1B[35m...\x1B[0m';
    }
    return value.toString();
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    logger.process('''
Bloc changes
From \x1B[0m${abstractString(change.currentState)}\x1B[35m to \x1B[0m${abstractString(change.nextState)}\x1B[35m
Type : ${bloc.runtimeType}
''');
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    logger.process('''
Bloc Error
Error : $error
Type : ${bloc.runtimeType}
Stacktrace : $stackTrace
''');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    logger.process('''
Bloc Closed
Type : ${bloc.runtimeType}
''');
    super.onClose(bloc);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  await initServices();

  runApp(await builder());
}

Future<void> initServices() async {
  final bindings = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: bindings);

  final flavorType = await getFlavor();
  await FirebaseInitDataSource().init(flavorType);
  HydratedBloc.storage = await BenAppHydratedStorage.build();
  await EnvCubit.instance.init();
  FlutterNativeSplash.remove();

  return;
}

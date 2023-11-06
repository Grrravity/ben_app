import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:ben_app/core/config/flavor/flavor.dart';
import 'package:ben_app/core/injection/dependency_injection.dart';

// part 'package:senior_gold/core/generated/controller/env_controller/env_cubit.freezed.dart';
part '../../generated/controller/env/env_cubit.freezed.dart';
part '../../generated/controller/env/env_cubit.g.dart';
// part 'env_cubit.freezed.dart';

part 'env_state.dart';

// /Users/normandysr2/Development/work/senior-gold-mobile/lib/core/generated/core/env_controller/env_cubit.freezed.dart

class EnvCubit extends Cubit<EnvState> with HydratedMixin<EnvState> {
  EnvCubit._() : super(const EnvState.loading());
  static final instance = EnvCubit._();

  Future<void> init() async {
    return initGetIt(
      envType: state.maybeMap(
        loaded: (lState) => lState.env,
        orElse: getEnv,
      ),
    ).then(
      (_) => emit(
        EnvState.loaded(
          env: state.maybeMap(
            loaded: (lState) => lState.env,
            orElse: getEnv,
          ),
        ),
      ),
    );
  }

  Future<void> changeEnv(EnvType env) async {
    emit(const EnvState.loading());
    await getIt.reset();
    await HydratedBloc.storage.clear();
    await initGetIt(envType: env);
    emit(
      EnvState.loaded(
        env: env,
      ),
    );
  }

  @override
  EnvState? fromJson(Map<String, dynamic> json) {
    return EnvState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(EnvState state) {
    return state.toJson();
  }
}

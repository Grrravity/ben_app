import 'package:ben_app/core/config/flavor/flavor.dart';

class Flavor {
  Flavor._();
  late FlavorType flavor;
  static final instance = Flavor._();

  Future<void> initFlavor({EnvType? environment}) async {
    flavor = await getFlavor();
  }
}

class Env {
  Env(this._env);
  EnvType? _env;

  EnvType get env {
    return _env ?? EnvType.inte;
  }

  set env(EnvType env) {
    _env = env;
  }

  String baseUrl() {
    return env.baseUrl;
  }
}

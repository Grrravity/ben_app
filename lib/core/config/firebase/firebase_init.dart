import 'package:benapp/core/config/firebase/firebase_options_dev.dart'
    as firebase_option_dev;
import 'package:benapp/core/config/firebase/firebase_options_prod.dart'
    as firebase_option_prod;
import 'package:benapp/core/config/flavor/flavor.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseInitDataSource {
  Future<FirebaseApp> init(FlavorType flavorType) async {
    try {
      switch (flavorType) {
        case FlavorType.prod:
          return await Firebase.initializeApp(
            name: 'bureaudetudebenapp-dev',
            options:
                firebase_option_prod.DefaultFirebaseOptions.currentPlatform,
          );
        case FlavorType.recette:
          return await Firebase.initializeApp(
            name: 'bureaudetudebenapp',
            options: firebase_option_dev.DefaultFirebaseOptions.currentPlatform,
          );
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}

import 'package:ben_app/core/config/firebase/firebase_options_inte.dart'
    as firebase_option_inte;
import 'package:ben_app/core/config/firebase/firebase_options_prod.dart'
    as firebase_option_prod;
import 'package:ben_app/core/config/flavor/flavor.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class FirebaseInitDataSource {
  Future<FirebaseApp> init(FlavorType flavorType) async {
    try {
      switch (flavorType) {
        case FlavorType.prod:
          return await Firebase.initializeApp(
            name: kIsWeb ? null : 'bureaudetudebenapp',
            options:
                firebase_option_prod.DefaultFirebaseOptions.currentPlatform,
          );
        case FlavorType.inte:
          return await Firebase.initializeApp(
            name: kIsWeb ? null : 'bureaudetudebenapp-dev',
            options:
                firebase_option_inte.DefaultFirebaseOptions.currentPlatform,
          );
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}

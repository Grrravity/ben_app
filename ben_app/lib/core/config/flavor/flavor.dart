import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

enum EnvType { prod, inte, dev }

enum FlavorType { prod, inte }

Future<FlavorType> getFlavor() async {
  if (kIsWeb) {
    const flavor = String.fromEnvironment('flavor', defaultValue: 'inte');

    switch (flavor) {
      case 'prod':
        return FlavorType.prod;
      case 'inte':
        return FlavorType.inte;
      default:
        return FlavorType.inte;
    }
  }
  final packageInfo = await PackageInfo.fromPlatform();
  switch (packageInfo.packageName) {
    case 'fr.app.ben.benapp':
      return FlavorType.prod;
    case 'fr.app.ben.benapp.dev':
      return FlavorType.inte;
    default:
      return FlavorType.inte;
  }
}

EnvType getEnv() {
  return const String.fromEnvironment('env', defaultValue: 'inte').env;
}

extension EnvTypeFromFlavor on FlavorType {
  EnvType get defaultEnv {
    switch (this) {
      case FlavorType.prod:
        return EnvType.prod;
      case FlavorType.inte:
        return EnvType.inte;
    }
  }

  String get mobilePackageName {
    switch (this) {
      case FlavorType.prod:
        return 'fr.app.ben.benapp';
      case FlavorType.inte:
        return 'fr.app.ben.benapp.dev';
    }
  }
}

extension OnEnvType on EnvType {
  FlavorType get flavor {
    switch (this) {
      case EnvType.prod:
        return FlavorType.prod;
      case EnvType.dev:
      case EnvType.inte:
        return FlavorType.inte;
    }
  }

  String get string {
    switch (this) {
      case EnvType.prod:
        return 'PROD';
      case EnvType.inte:
        return 'INTE';
      case EnvType.dev:
        return 'DEV';
    }
  }

  Color get color {
    switch (this) {
      case EnvType.prod:
        return const Color(0XFFe6242c);
      case EnvType.inte:
        return Colors.purple;
      case EnvType.dev:
        return Colors.grey;
    }
  }

  String get _localhost => Platform.isAndroid ? '10.0.2.2' : 'localhost';

  String get baseUrl {
    switch (this) {
      case EnvType.prod:
        return 'https://changeme/api'; // TODO changeme
      case EnvType.inte:
        return 'https://changeme/api'; // TODO changeme
      case EnvType.dev:
        return 'http://$_localhost:3000/api';
    }
  }

  String get website {
    switch (this) {
      case EnvType.inte:
      case EnvType.dev:
        return 'benapp-dev.web.app';
      case EnvType.prod:
        return 'bureaudetudebenapp.web.app';
    }
  }

  Map<String, dynamic> get toJson {
    return {'env': string};
  }
}

extension OnEnvTypeString on String? {
  EnvType get env {
    switch (this) {
      case 'production':
      case 'prod':
      case 'PROD':
        return EnvType.prod;
      case 'integration':
      case 'inte':
      case 'INTE':
        return EnvType.inte;
      case 'development':
      case 'dev':
      case 'DEV':
        return EnvType.dev;
      default:
        return EnvType.inte;
    }
  }
}

extension OnEnvTypeFromJson on Map<String, dynamic> {
  EnvType get fromJson {
    return (['env'] as String?).env;
  }
}

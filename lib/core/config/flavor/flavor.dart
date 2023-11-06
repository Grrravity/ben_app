import 'dart:io';

import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

enum EnvType { prod, inte, dev }

enum FlavorType { prod, recette }

Future<FlavorType> getFlavor() async {
  final packageInfo = await PackageInfo.fromPlatform();
  switch (packageInfo.packageName) {
    case 'io.thetribe.seniorgold':
      return FlavorType.prod;
    case 'io.thetribe.seniorgold.recette':
      return FlavorType.recette;
    default:
      return FlavorType.recette;
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
      case FlavorType.recette:
        return EnvType.inte;
    }
  }

  String get mobilePackageName {
    switch (this) {
      case FlavorType.prod:
        return 'io.thetribe.seniorgold';
      case FlavorType.recette:
        return 'io.thetribe.seniorgold.recette';
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
        return FlavorType.recette;
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
        return 'https://apigateway.seniorgold.thestaging.io';
      case EnvType.inte:
        return 'https://apigateway.seniorgold.thestaging.io';
      case EnvType.dev:
        return 'http://$_localhost:3000';
    }
  }

  String get authRedirectUri {
    switch (this) {
      case EnvType.prod:
        return 'io.thetribe.seniorgold://auth';
      case EnvType.inte:
      case EnvType.dev:
        return 'io.thetribe.seniorgold.recette://auth';
    }
  }

  String get keycloackBaseUrl {
    switch (this) {
      case EnvType.prod:
        // TODO
        return 'https://keycloak.seniorgold.thestaging.io/realms/SeniorRealm';
      case EnvType.inte:
        // TODO
        return 'https://keycloak.seniorgold.thestaging.io/realms/SeniorRealm';
      case EnvType.dev:
        return 'http://$_localhost:8080/realms/SeniorRealm';
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

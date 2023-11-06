import 'package:dio/dio.dart';

extension ResponseExtension on Response<dynamic> {
  dynamic get _data {
    if (data == null || (data is! Map && data is! List)) {
      throw Exception('Response body is null or invalid');
    }
    return data;
  }

  Map<String, dynamic> get item {
    return _data as Map<String, dynamic>;
  }

  List<dynamic> get collection {
    return _data as List<dynamic>;
  }

  String? get error {
    if (statusCode != null && statusCode! >= 200 && statusCode! < 300) {
      return null;
    }

    return (data as Map<String, dynamic>?)?['message'] as String? ??
        'Unknown failure';
  }
}

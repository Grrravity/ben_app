import 'dart:async';
import 'dart:developer';

import 'package:uuid/uuid.dart';

class AsyncTask<T> {
  AsyncTask({
    required this.task,
    required this.name,
  });

  Completer<T>? _completer;
  final Future<T> Function() task;
  final String name;
  String? _id;

  Future<T> run() async {
    if (_completer != null) {
      log(
        'Already running. Will return result soon.',
        name: 'AsyncTask $name[$_id]',
      );
      return _completer!.future;
    }

    _completer = Completer();
    _id = const Uuid().v4();
    unawaited(
      task().then((result) {
        log('Done.', name: 'AsyncTask $name[$_id]');
        _completer!.complete(result);
        _completer = null;
      }),
    );

    log('Started. Will return result soon.', name: 'AsyncTask $name[$_id]');
    return _completer!.future;
  }

  Future<T> schedule(Duration delay) async => Future.delayed(
        delay,
        run,
      );
}

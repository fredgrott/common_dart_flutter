// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print

Future<void> main() async {
  // Passing a callback to then() will invoke
  // that callback when the future completes
  onReady.then((String status) {
    print(status);
  });

  // Futures can be chained:
  onReady.then(print).then((_) => print('done!'));

  // Futures can throw errors:
  onReady.catchError(() {
    print('error!');
  });
}

Future<String> get onReady {
  const dur = Duration(seconds: 1);
  final oneSecond = Future<dynamic>.delayed(dur);

  // then() returns a new future that completes
  // with the value of the callback.
  return oneSecond.then((dynamic _) {
    return 'loaded!';
  });
}

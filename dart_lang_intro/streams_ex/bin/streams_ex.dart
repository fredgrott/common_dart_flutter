// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print, avoid_dynamic_calls

import 'dart:async';

Future<void> main() async {
  // creates a single subscription stream
  Stream.fromIterable([1, 3, 5]).listen((i) {
    print('s1: $i');
  });

  // New streams can created from other streams, using
  // using methods like where(), map(), expand(), take(), or skip()
  Stream<dynamic>.periodic(const Duration(milliseconds: 300))
      .take(3)
      .listen((dynamic _) => print('s2: tick!'));

  Stream.fromIterable([1, 2, 5])
      .map((n) => n * 2)
      .listen((n) => print('s3: $n'));

  // Broadcast streams can be listened to by multiple consumers.
  final dynamic sc = StreamController<dynamic>.broadcast();
  final dynamic broadcastStream = sc.stream;
  broadcastStream.listen((dynamic v) => print('s4: $v'));
  broadcastStream.listen((dynamic v) => print('s4: $v'));
  sc.add(1);
  sc.add(2);
}

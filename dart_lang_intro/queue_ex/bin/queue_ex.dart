// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print, avoid_dynamic_calls

import 'dart:collection';

Future<void> main() async {
  // Queues are optimized for adding to the head or tail
  // Items cannot be accessed by their index.
  final dynamic q = Queue<dynamic>.from(<dynamic>[300, 200, 100, 500]);

  // Queues implement Iterable:
  print(q.takeWhile((dynamic i) => i > 100));

  // Consuming a queue
  while (q.first() > 100 == true) {
    q.removeFirst();
  }
  print(q);
}

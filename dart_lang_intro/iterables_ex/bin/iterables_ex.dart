// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print

Future<void> main() async {
  // Iterable is implemented by LinkedList,List, ListQueue, Queue, Runes,
  // Set, and more.
  final set = <dynamic>{}
    ..add('greg')
    ..add('steve');

  for (final name in set) {
    print(name);
  }
}

// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print, avoid_dynamic_calls

Future<void> main() async {
  final iter = [1, 5, 10].iterator;
  while (iter.moveNext()) {
    print(iter.current);
  }

  final iterable = Iterable<dynamic>.generate(3);
  final iter2 = iterable.map<dynamic>((dynamic n) => n * 2).iterator;
  while (iter2.moveNext()) {
    print(iter2.current);
  }
}

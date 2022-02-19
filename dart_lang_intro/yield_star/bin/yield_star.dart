// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print

Future<void> main() async {
  await for (final int i in numbersDownFrom(5)) {
    print('$i bottles of beer');
  }
}

Stream<int> numbersDownFrom(int n) async* {
  if (n >= 0) {
    await Future<dynamic>.delayed(const Duration(milliseconds: 100));
    yield n;
    yield* numbersDownFrom(n - 1);
  }
}

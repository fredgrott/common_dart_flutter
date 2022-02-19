// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print

Future<void> main() async {
  await for (final String msg in printNumbersDownAsync(5)) {
    print(msg);
  }
}

Stream<String> printNumbersDownAsync(int n) async* {
  int k = n;
  while (k >= 0) {
    yield await loadMessageForNumber(k--);
  }
}

Future<String> loadMessageForNumber(int i) async {
  await Future<dynamic>.delayed(const Duration(milliseconds: 50));
  // ignore: use_is_even_rather_than_modulo
  if (i % 2 == 0) {
    return '$i is even';
  } else {
    return '$i is odd';
  }
}

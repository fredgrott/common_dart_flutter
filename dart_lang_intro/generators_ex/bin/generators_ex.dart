// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print

Future<void> main() async {
  evenNumbersDownFrom(7).forEach(print);
}

// sync* functions return an iterable
Iterable<int> evenNumbersDownFrom(int n) sync* {
  // the body isn't executed until an iterator invokes moveNext()
  int k = n;
  while (k >= 0) {
    // ignore: use_is_even_rather_than_modulo
    if (k % 2 == 0) {
      // 'yield' suspends the function
      yield k;
    }
    k--;
  }

  // when the end of the function is executed,
  // there are no more values in the Iterable, and
  // moveNext() returns false to the caller
}

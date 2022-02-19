// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print

typedef Validator = bool Function(int n);

bool positive(int n) => n >= 0;
bool lessThan100(int n) => n < 100;

bool bothValid(int n, Validator v1, Validator v2) {
  return v1(n) && v2(n);
}

Future<void> main() async {
  final Validator both = (int n) => bothValid(n, positive, lessThan100);
  print('${both(5)}');
  print('${both(1000)}');
}

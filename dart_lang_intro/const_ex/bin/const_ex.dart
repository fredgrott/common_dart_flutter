// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print

import 'dart:math';

// compile-time constants are defined using 'const'
const name = "greg";

// Objects can also be declared at compile-time
// ignore: unnecessary_const
const Rectangle<int> bounds = const Rectangle(0, 0, 5, 5);

Future<void> main() async {
  print(name);
  print(bounds);
}

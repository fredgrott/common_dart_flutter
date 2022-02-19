// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print, prefer_final_locals

Future<void> main() async {
  // 'var' declares a variable.  dartanalyzer infers the type.
  var a = "initial";
  print(a);

  // The type can also be declared:
  num b = 42;
  print(b);

  // final variables cannot be changed once declared
  const num c = 99;
  print(c);

  // const variables are compile-time constants
  const double d = 44.00;
  print(d);
}

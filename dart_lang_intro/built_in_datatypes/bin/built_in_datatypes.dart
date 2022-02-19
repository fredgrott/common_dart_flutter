// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

void main(List<String> arguments) {
  // Numbers: int
  int score = 23;
  // ignore: unused_local_variable
  var count = 23; // It is inferred as integer automatically by compiler
  // ignore: unused_local_variable
  int hexValue = 0xEADEBAEE;

  // Numbers: double
  // ignore: unused_local_variable
  double percentage = 93.4;
  // ignore: unused_local_variable
  var percent = 82.533;
  double exponents = 1.42e5;

  // Strings
  // ignore: unused_local_variable
  String name = "Henry";
  // ignore: unused_local_variable
  var company = "Google";

  // Boolean
  // ignore: unused_local_variable
  bool isValid = true;
  // ignore: unused_local_variable
  var isAlive = false;

  print(score);
  print(exponents);

  // NOTE: All data types in Dart are Objects.
  // Therefore, their initial value is by default 'null'
}

// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// 1. Required Parameters
// 2. Optional Positional Parameters

// ignore_for_file: avoid_print

void main() {
  printCities("New York", "New Delhi", "Sydney");
  print("");

  printCountries("USA"); // You can skip the Optional Positional Parameters
}

// Required Parameters
void printCities(String name1, String name2, String name3) {
  print("Name 1 is $name1");
  print("Name 2 is $name2");
  print("Name 3 is $name3");
}

// Optional Positional Parameters
void printCountries(String name1, [String? name2, String? name3]) {
  print("Name 1 is $name1");
  print("Name 2 is $name2");
  print("Name 3 is $name3");
}

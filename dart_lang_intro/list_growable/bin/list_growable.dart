// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Objectives
// 1. Growable list

// ignore_for_file: avoid_print

void main() {
  // Elements:    N   21  12
  // Index:       0   1   2

  final List<String> countries = [
    "USA",
    "INDIA",
    "CHINA"
  ]; // Growable List : METHOD 1
  countries.add("Nepal");
  countries.add("Japan");

  final numbersList = <int>[5,0]; // Growable List: METHOD 2
  numbersList.add(73); // Insert Operation
  numbersList.add(64);
  numbersList.add(21);
  numbersList.add(12);

  numbersList[0] = 99; // Update operation
  // ignore: cast_nullable_to_non_nullable
  numbersList[1] = null as int; // Delete operation

  print(numbersList[0]);

  numbersList.remove(99);
  numbersList.add(24);
  numbersList.removeAt(3);
//	numbersList.clear();

  print("\n");

  for (final int element in numbersList) {
    // Using Individual Element ( Objects )
    print(element);
  }

  print("\n");

  for (final element in numbersList) {
    print(element);
  } // Using Lambda

  print("\n");

  for (int i = 0; i < numbersList.length; i++) {
    // Using Index
    print(numbersList[i]);
  }
}

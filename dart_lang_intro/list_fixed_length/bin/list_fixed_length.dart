// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Objectives
// 1. Fixed-length list

// ignore_for_file: avoid_print

void main() {
  // Elements:    N   N   N   N   N
  // Index:       0   1   2   3   4

  final  numbersList = List<int>.filled(5, 0); // Fixed-length list
  numbersList[0] = 73; // Insert operation
  numbersList[1] = 64;
  numbersList[3] = 21;
  numbersList[4] = 12;

  numbersList[0] = 99; // Update operation
  // ignore: cast_nullable_to_non_nullable
  numbersList[1] = null as int; // Delete operation

  print(numbersList[0]);
  print("\n");

//	numbersList.remove(73);                 // Not supported in fixed-length list
//	numbersList.add(24);                    // Not supported in fixed-length list
//	numbersList.removeAt(3);                // Not supported in fixed-length list
//	numbersList.clear();                    // Not supported in fixed-length list

  for (final int element in numbersList) {
    // Using Individual Element (Objects)
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

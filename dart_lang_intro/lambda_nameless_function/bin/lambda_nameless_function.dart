// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Objectives
// 1. Lambda Functions
// NOTE: A function in Dart is object

// ignore_for_file: avoid_print, prefer_function_declarations_over_variables, avoid_dynamic_calls

void main() {
  // Defining Lambda: 1st way
  final Function addTwoNumbers = (int a, int b) {
    final sum = a + b;
    print(sum);
  };

  final multiplyByFour = (int number) {
    return number * 4;
  };

  // Defining Lambda: 2nd way: Function Expression: Using Short Hand Syntax or FAT Arrow ( '=>' )
  final Function addNumbers = (int a, int b) => print(a + b);

  final multiplyFour = (int number) => number * 4;

  // Calling lambda function
  addTwoNumbers(2, 5);
  print(multiplyByFour(5));

  addNumbers(3, 7);
  print(multiplyFour(10));
}

// A example of Normal function
void addMyNumbers(int a, int b) {
  final sum = a + b;
  print(sum);
}

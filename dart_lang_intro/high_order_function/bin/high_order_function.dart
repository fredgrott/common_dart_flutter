// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Objectives
// 1. Higher-Order Function:
// How to pass function as parameter?
// How to return a function from another function?

// ignore_for_file: avoid_print, prefer_function_declarations_over_variables, avoid_dynamic_calls

void main() {
  // Example One: Passing Function to Higher-Order Function
  final Function addNumbers = (int a, int b) => print(a + b);
  someOtherFunction("Hello", addNumbers);

  // Example Two: Receiving Function from Higher-Order Function
  final myFunc = taskToPerform();
  print(myFunc(
      10,),); // multiplyFour(10)         // number * 4       // 10 * 4       // OUTPUT: 40
}

// Example one: Accepts function as parameter
void someOtherFunction(String message, Function myFunction) {
  // Higher-Order Function

  print(message);
  myFunction(2,
      4,); // addNumbers(2, 4)    // print(a + b);   // print(2 + 4)       // OUTPUT: 6
}

// Example two: Returns a function
Function taskToPerform() {
  // Higher-Order Function

  final Function multiplyFour = (int number) => number * 4;
  return multiplyFour;
}

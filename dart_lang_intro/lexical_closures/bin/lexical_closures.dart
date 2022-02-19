// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Objective
// 1. Closures

// ignore_for_file: avoid_print, prefer_function_declarations_over_variables, avoid_dynamic_calls

void main() {
  // Definition 1:
  // A closure is a function that has access to the parent scope, even after the scope has closed.

  String message = "Dar is good";

  final Function showMessage = () {
    message = "Dart is awesome";
    print(message);
  };

  
  showMessage();

  // Definition 2:
  // A closure is a function object that has access to variables in its lexical scope,
  // even when the function is used outside of its original scope.

  final Function talk = () {
    String msg = "Hi";

    final Function say = () {
      msg = "Hello";
      print(msg);
    };

    return say;
  };

  final Function speak = talk() as Function;

  speak(); // talk()       // say()        //  print(msg)      // "Hello"
}

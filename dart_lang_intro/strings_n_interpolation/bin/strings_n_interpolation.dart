// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: unused_local_variable, unnecessary_statements, avoid_print, avoid_escaping_inner_quotes

void main() {
  // Literals
  const isCool = true;
  const int x = 2;
  "John";
  4.5;

  // Various ways to define String Literals in Dart
  const String s1 = 'Single';
  const String s2 = "Double";
  const String s3 = 'It\'s easy';
  const String s4 = "It's easy";

  const String s5 = 'This is going to be a very long String. '
      'This is just a sample String demo in Dart Programming Language';

  // String Interpolation : Use ["My name is $name"] instead of ["My name is " + name]
  const String name = "Kevin";

  print("My name is $name");
  print("The number of characters in String Kevin is ${name.length}");

  const int l = 20;
  const int b = 10;

  print("The sum of $l and $b is ${l + b}");
  print("The area of rectangle with length $l and breadth $b is ${l * b}");
}

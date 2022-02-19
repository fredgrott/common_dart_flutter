// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


// Objectives
// 1. Static Methods and Variables

// ignore_for_file: unused_local_variable, unnecessary_statements, unnecessary_this, avoid_print

void main() {
  final circle1 = Circle();
//	circle1.pi;     // 4 bytes

  final circle2 = Circle();
//	circle2.pi;     // 4 bytes

  // 8 bytes      // waste of extra 4 bytes

  Circle.pi; // 4 bytes
  Circle.pi; // No more memory will be allocated .

//	circle.calculateArea();

//	print(Circle.pi);           // Syntax to call Static Variable

//	Circle.calculateArea();     // Syntax to call Static Method
}

class Circle {
  static const double pi = 3.14;
  static int maxRadius = 5;

  late String color;

  static void calculateArea() {
    print("Some code to calculate area of Circle");
//		myNormalFunction();     // Not allowed to call instance functions
//		this.color;             // You cannot use 'this' keyword and even cannot access Instance variables
  }

  void myNormalFunction() {
    calculateArea();
    this.color = "Red";
    print(pi);
    print(maxRadius);
  }
}

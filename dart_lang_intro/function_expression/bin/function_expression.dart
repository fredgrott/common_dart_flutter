// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// OBJECTIVE: Expression in Function: SHORT HAND SYNTAX

// ignore_for_file: avoid_print

void main() {
  findPerimeter(4, 2);

  final int rectArea = getArea(10, 5);
  print("The area is $rectArea");
}

void findPerimeter(int length, int breadth) =>
    print("The perimeter is ${2 * (length + breadth)}");

int getArea(int length, int breadth) => length * breadth;


// "=>" is known as FAT ARROW
// "=> expression" is a SHORT HAND SYNTAX for { return expression; }
// Example "=> length * breadth" is SHORT HAND SYNTAX for { return length * breadth; }

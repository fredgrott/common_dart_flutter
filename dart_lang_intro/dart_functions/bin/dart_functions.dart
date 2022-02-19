// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// OBJECTIVES
// 1. Define a Function
// 2. Pass parameters to a Function
// 3. Return value from a Function
// 4. Test that by default a Function returns null

// ignore_for_file: avoid_print

void main() {
  findPerimeter(4, 2);

  final int rectArea = getArea(10, 5);
  print("The area is $rectArea");
}

void findPerimeter(int length, int breadth) {
  final int perimeter = 2 * (length + breadth);
  print("The perimeter is $perimeter");
}

int getArea(int length, int breadth) {
  final int area = length * breadth;
  return area;
}

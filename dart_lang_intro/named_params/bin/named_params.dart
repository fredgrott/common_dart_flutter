// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Optional Named Parameters

// ignore_for_file: avoid_print

void main() {
  findVolume(10, breadth: 5, height: 20);
  print("");

  findVolume(10,
      height: 20, breadth: 5,); // Sequence doesn't matter in Named Parameter
}

void findVolume(int length, {int? breadth, int? height}) {
  print("Length is $length");
  print("Breadth is $breadth");
  print("Height is $height");

  print("Volume is ${length * breadth! * height!}");
}

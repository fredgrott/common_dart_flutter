// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print

// ignore: avoid_classes_with_only_static_members
class Position {
  // a static function
  static int get maxX => 100;

  // a static property
  static int maxY = 200;
}

Future<void> main() async {
  print(Position.maxX);
  print(Position.maxY);
}

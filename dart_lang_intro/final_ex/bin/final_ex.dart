// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

Future<void> main() async {
  // final variables are single-assignment:
  final foo = "hello";

  try {
    foo = 'goodbye'; // runtime error; already assigned
  } catch (e) {
    print('error');
  }

  var pos = new Position(4);

  try {
    pos.x = 100; // runtime error
  } catch (e) {
    print('error');
  }
}

class Position {
  final int x;
  final int y;
  Position(this.x) : y = 0;
}

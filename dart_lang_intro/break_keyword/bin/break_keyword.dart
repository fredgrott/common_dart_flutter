// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gist: The break keyword breaks exceution to force flow to go 
//       to the parent in flow-control. In loops it forces going back to ]
//       parent of the loop in it then statements forces to break out of that 
//       construct.


void main() {
  // BREAK keyword
  // Using Labels
  // Nested FOR Loop

  myOuterLoop:
  for (int i = 1; i <= 3; i++) {
    // ignore: unused_label
    innerLoop:
    for (int j = 1; j <= 3; j++) {
      // ignore: avoid_print
      print("$i $j");

      if (i == 2 && j == 2) {
        break myOuterLoop;
      }
    }
  }
}

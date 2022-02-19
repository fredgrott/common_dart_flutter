// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: use_is_even_rather_than_modulo, avoid_print

void main() {
  // WHILE Loop
  // WAP to find the even numbers between 1 to 10

  var i = 1;
  while (i <= 10) {
    if (i % 2 == 0) {
      print(i);
    }

    i++;
  }
}

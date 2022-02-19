// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print

void main() {
  // FOR Loop

  // WAP to find the even numbers between 1 to 10

  for (int i = 1; i <= 10; i++) {
    // ignore: use_is_even_rather_than_modulo
    if (i % 2 == 0) {
      print(i);
    }
  }

  // for ..in loop
  final List<String> planetList = ["Mercury", "Venus", "Earth", "Mars"];

  for (final String planet in planetList) {
    print(planet);
  }
}

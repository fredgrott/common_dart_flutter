// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

void main() {
  // Switch Case Statements: Applicable for only 'int' and 'String'

  String grade = 'A';

  switch (grade) {
    case 'A':
      print("Excellent grade of A");
      break;

    case 'B':
      print("Very Good !");
      break;

    case 'C':
      print("Good enough. But work hard");
      break;

    case 'F':
      print("You have failed");
      break;
    default:
      print("Invalid Grade");
  }
}

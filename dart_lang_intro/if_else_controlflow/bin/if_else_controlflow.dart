// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print

void main() {
  // IF and ELSE Statements
  const salary = 15000;

  if (salary > 20000) {
    print("You got promotion. Congratulations !");
  } else {
    print("You need to work hard !");
  }

  // IF ELSE IF Ladder statements
  const marks = 70;

  if (marks >= 90 && marks < 100) {
    print("A+ grade");
  } else if (marks >= 80 && marks < 90) {
    print("A grade");
  } else if (marks >= 70 && marks < 80) {
    print("B grade");
  } else if (marks >= 60 && marks < 70) {
    print("C grade");
  } else if (marks > 30 && marks < 60) {
    print("D grade");
  } else if (marks >= 0 && marks < 30) {
    print("You have failed");
  } else {
    print("Invalid Marks. Please try again !");
  }
}

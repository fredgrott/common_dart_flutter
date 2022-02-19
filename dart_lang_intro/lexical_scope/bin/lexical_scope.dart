// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

Future<void> main() async {
  var functions = <dynamic>[];

  for (var i = 0; i < 3; i++) {
    functions.add(() => i);
  }

  functions.forEach((dynamic fn) => print(fn()));
}

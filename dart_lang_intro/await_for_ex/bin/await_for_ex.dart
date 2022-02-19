// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

Future<void> main() async {
  await for (int i in numbersDownFrom(5)) {
    print('$i bottles of beer');
  }
}

Stream<int> numbersDownFrom(int n) async* {
  while (n >= 0) {
    await new Future<dynamic>.delayed(new Duration(milliseconds: 100));
    yield n--;
  }
}

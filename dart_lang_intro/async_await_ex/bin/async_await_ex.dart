// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

const Duration delay = const Duration(milliseconds: 200);

// This function doesn't use async / await; just the
// standard Future API
Future<String> loadLastName(String firstName) {
  return new Future<dynamic>.delayed(delay).then((dynamic _) {
    return firstName + 'son';
  });
}

// Marking a function with 'async' will return a future
// that completes with the returned value.
// This function is equivalent to [loadLastName]
Future<String> loadLastName2(String firstName) async {
  await new Future<dynamic>.delayed(delay);

  return firstName + 'son';
}

Future<void> main() async {
  // 'await' will suspend execution of the function until the
  // future completes:
  var gregsLastName = await loadLastName('greg');
  var stevesLastName = await loadLastName2('steve');

  print('greg $gregsLastName');
  print('steve $stevesLastName');
}

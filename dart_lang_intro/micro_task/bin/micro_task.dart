// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_print

import 'dart:async';

Future<void> main() async {
  // Future() schedules a task on the event queue:
  Future(() => print('world'));
  print('hello');

  // scheduleMicrotask() will add the task to the microtask queue:
  // Tasks on the microtask queue are executed before the next
  // run-loop on the event queue.
  scheduleMicrotask(() => print('beautiful'));

  print('there');
}

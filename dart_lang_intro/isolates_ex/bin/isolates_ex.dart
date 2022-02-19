// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:isolate';

Future<void> main() async {
  var receivePort = new ReceivePort();
  await Isolate.spawn(echo, receivePort.sendPort);

  // The 'echo' isolate sends it's SendPort as the first message
  SendPort  sendPort = await receivePort.first as SendPort;

  dynamic msg = await sendReceive(sendPort, "foo");
  print('received $msg');
  msg = await sendReceive(sendPort, "bar");
  print('received $msg');
}

// the entry point for the isolate
dynamic echo(SendPort sendPort) async {
  // Open the ReceivePort for incoming messages.
  var port = new ReceivePort();

  // Notify any other isolates what port this isolate listens to.
  sendPort.send(port.sendPort);

  await for (var msg in port) {
    dynamic data = msg[0];
    SendPort replyTo = msg[1] as SendPort;
    replyTo.send(data);
    if (data == "bar") port.close();
  }
}

/// sends a message on a port, receives the response,
/// and returns the message
Future<dynamic> sendReceive(SendPort port, dynamic msg) {
  ReceivePort response = new ReceivePort();
  port.send(<dynamic>[msg, response.sendPort]);
  return response.first;
}

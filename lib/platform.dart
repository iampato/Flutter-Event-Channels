import 'package:flutter/services.dart';

Stream<String> streamTimeFromNative() {
  const _timeChannel =
      const EventChannel('com.example.two_eventchannels/events1');
  return _timeChannel.receiveBroadcastStream().map((event) => event.toString());
}

Stream<int> streamCounterFromNative() {
  const _counterChannel =
      const EventChannel('com.example.two_eventchannels/events2');
  return _counterChannel.receiveBroadcastStream().map((event) {
    return int.parse(event.toString());
  });
}

import 'package:daily_lancers/SplashScreen/splash.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Chat/UserChat.dart';
import 'Chat/UserMessage.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatView(),
      // home: BotNav(),
    );
  }
}

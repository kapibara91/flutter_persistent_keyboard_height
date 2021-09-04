import 'package:flutter/material.dart';

import 'package:flutter_persistent_keyboard_height/flutter_persistent_keyboard_height.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FlutterPersistentKeyboardHeightProvider(
        child: FlutterPersistentKeyboardHeightExample(),
      ),
    );
  }
}

class FlutterPersistentKeyboardHeightExample extends StatelessWidget {
  const FlutterPersistentKeyboardHeightExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final keyboardHeight =
        FlutterPersistentKeyboardHeight.of(context).keyboardHeight;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Flutter Persistent Keyboard Size Example',
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(keyboardHeight.toString()),
        ],
      ),
    );
  }
}
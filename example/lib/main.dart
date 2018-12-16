import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:securerandom/securerandom.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Uint8List _random = Uint8List(0);

  @override
  void initState() {
    super.initState();
    SecureRandom.generateSeed(32).then((r) => setState(() => _random = r));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SecureRandom Example'),
        ),
        body: Center(
          child: Column(
            children: _random.map((int n) => Text(n.toString())).toList(),
          ),
        ),
      ),
    );
  }
}

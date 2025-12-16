import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 300,
            height: 100,
            child: AndroidView(
              viewType: 'native-text-view',
              layoutDirection: TextDirection.ltr,
              creationParamsCodec: StandardMessageCodec(),
            ),
          ),
        ),
      ),
    );
  }
}

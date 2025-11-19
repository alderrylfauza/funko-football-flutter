import 'package:flutter/material.dart';
import 'package:funko_shop_mobile/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football FunkoPop Shop',
      theme: ThemeData(
        // This sets the color scheme for the whole app
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      // This points to the MyHomePage widget inside menu.dart
      home: MyHomePage(),
    );
  }
}

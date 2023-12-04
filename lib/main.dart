import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'roulette/roulette.dart';

const methodChannel = MethodChannel('com.amco.cs');

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: Colors.grey.shade100,
        ),
        useMaterial3: true,
      ),
      initialRoute: 'roulette',
      routes: {'roulette': (_) => const Roulette()},
    );
  }
}

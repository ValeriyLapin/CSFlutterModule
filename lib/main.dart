import 'package:flutter/material.dart';

import 'roulette/widgets/roulette.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

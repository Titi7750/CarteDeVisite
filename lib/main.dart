import 'package:flutter/material.dart';

import 'screens/visitCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ma carte de visite',
      home: VisitCard(),
    );
  }
}

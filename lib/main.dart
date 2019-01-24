import 'package:flutter/material.dart';

import 'ui/counter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Streams',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}

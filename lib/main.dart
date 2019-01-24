import 'package:flutter/material.dart';

import 'logic/increment_bloc.dart';
import 'logic/bloc_base.dart';
import 'ui/counter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Streams',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: BlocProvider<IncrementBloc>(
        bloc: IncrementBloc(),
        child: CounterPage(),
      ),
    );
  }
}

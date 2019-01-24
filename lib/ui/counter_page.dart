import 'package:flutter/material.dart';

import '../logic/increment_bloc.dart';
import '../logic/bloc_base.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IncrementBloc bloc = BlocProvider.of<IncrementBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Streams counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            MyCounterStream(
              stream: bloc.outCounter,
              initialData: 0,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          bloc.incrementCounter.add(null);
        },
      ),
    );
  }
}

class MyCounterStream extends StatelessWidget {
  MyCounterStream({this.initialData, this.stream});
  final stream;
  final int initialData;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: stream,
      initialData: initialData,
      builder: (context, snapshot) => Text(
            '${snapshot.data}',
            textScaleFactor: 1.8,
          ),
    );
  }
}

import 'dart:async';
import 'bloc_base.dart';

class IncrementBloc implements BlocBase {
  int _counter;

  /*
  * Stream to handle the counter
  **/
  StreamController<int> _counterController = StreamController<int>();
  StreamSink<int> get _inAdd => _counterController.sink;
  Stream<int> get outCounter => _counterController.stream;

  /*
  * Stream to handle actions on the counter
  **/
  StreamController _actionController = StreamController();
  StreamSink get incrementCounter => _actionController.sink;

  // Constructor
  IncrementBloc() {
    _counter = 0;
    _actionController.stream.listen(_handleLogic);
  }

  void _handleLogic(data) {
    _counter++;
    _inAdd.add(_counter);
  }

  void dispose() {
    _actionController.close();
    _counterController.close();
  }
}

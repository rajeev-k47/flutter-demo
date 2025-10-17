import 'package:demo/src/widgets.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});
  //Immutable part

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    // _counter++;
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$_counter"),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: const Text('Increase Count'),
        ),
        Expanded(
          child: WidgetsDemo(),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class StateHoistingDemo extends StatelessWidget {
  const StateHoistingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('State Hoisting'), automaticallyImplyLeading: true,),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: ParentWidget(),
        ),
      );
  }
}

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Parent state: $counter', style: const TextStyle(fontSize: 18)),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(child: ChildWidget(value: counter, onPressed: _incrementCounter)),
            const SizedBox(width: 10),
            Expanded(child: ChildWidget(value: counter, onPressed: _incrementCounter)),
          ],
        ),
      ],
    );
  }
}

class ChildWidget extends StatelessWidget {
  final int value;
  final VoidCallback onPressed;

  const ChildWidget({super.key, required this.value, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Child button: $value'),
    );
  }
}
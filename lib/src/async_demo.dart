import 'package:flutter/material.dart';

class AsyncDemoPage extends StatefulWidget {
  const AsyncDemoPage({super.key});

  @override
  State<AsyncDemoPage> createState() => _AsyncDemoPageState();
}

class _AsyncDemoPageState extends State<AsyncDemoPage> {
  String data = "Loading...";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    String result = await fetchData();
    setState(() {
      data = result;
    });
  }

  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 3));
    return 'Async Task Completed!';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Async Demo')),
      body: Center(child: Text(data, style: const TextStyle(fontSize: 24))),
    );
  }
}

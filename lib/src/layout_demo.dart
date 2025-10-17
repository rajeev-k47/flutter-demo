import 'package:flutter/material.dart';


class LayoutDemoApp extends StatelessWidget {
  const LayoutDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Row & Column Layout Demo')),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: LayoutDemo(),
        ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Column',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Container(
            color: Colors.blue.shade200,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Item 1'),
                Text('Item 2'),
                Text('Item 3'),
              ],
            ),
          ),
          const SizedBox(height: 20),

          const Text(
            'Row',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Container(
            color: Colors.green.shade50,
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: const [
                Icon(Icons.star, color: Colors.amber, size: 30),
                Icon(Icons.favorite, color: Colors.red, size: 30),
                Icon(Icons.thumb_up, color: Colors.blue, size: 30),
              ],
            ),
          ),
          const SizedBox(height: 20),
          
          const Text(
            'Alignment in Column & Row',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Container(
            color: Colors.orange.shade50,
            height: 120,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Start', style: TextStyle(fontSize: 16)),
                Text('Center', style: TextStyle(fontSize: 16)),
                Text('End', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          const SizedBox(height: 20),

          const Text(
            'Nested Row & Column',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),


          Container(
            color: Colors.purple.shade50,
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.home, size: 30),
                    Icon(Icons.search, size: 30),
                    Icon(Icons.settings, size: 30),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Nested Row Example', style: TextStyle(fontSize: 16)),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          
          const Text(
            'Expanded & Flexible Example',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          Container(
            color: Colors.teal.shade50,
            height: 60,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.red,
                    child: const Center(child: Text('3 flex')),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    child: const Center(child: Text('1 flex')),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.orange,
                    child: const Center(child: Text('1 flex')),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          const Text(
            'Using Spacer',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Container(
            color: Colors.yellow.shade50,
            height: 60,
            child: Row(
              children: const [
                Text('Start'),
                Spacer(),
                Text('Middle'),
                Spacer(flex: 2),
                Text('End'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

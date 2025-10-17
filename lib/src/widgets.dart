import 'package:demo/src/api_demo.dart';
import 'package:demo/src/async_demo.dart';
import 'package:demo/src/layout_demo.dart';
import 'package:demo/src/second_page.dart';
import 'package:demo/src/state_hoisting.dart';
import 'package:flutter/material.dart';

class WidgetsDemo extends StatelessWidget {
  const WidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Text Widget',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Divider(),

            const Text(
              'Container Widget',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'Container with color',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const Divider(),

            const Text(
              'Row & Column Widgets',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.star, color: Colors.amber, size: 30),
                Icon(Icons.favorite, color: Colors.red, size: 30),
                Icon(Icons.thumb_up, color: Colors.blue, size: 30),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(),

            const Text(
              'Image Widget',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://storage.googleapis.com/cms-storage-bucket/404-dash.65361d7e1dfa118aa63b.png',
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            const Divider(),

            const Text(
              'Button Widgets',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            const Divider(),

            const Text(
              'SizedBox & Center',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Center(
              child: Container(
                height: 80,
                width: 80,
                color: Colors.orange,
                alignment: Alignment.center,
                child: const Text('Centered Box', textAlign: TextAlign.center),
              ),
            ),
            const Divider(),

            const Text(
              'Card Widget',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const ListTile(
                leading: Icon(Icons.person, size: 40, color: Colors.indigo),
                title: Text('Flutter Widget Example'),
                subtitle: Text('Card widget with ListTile'),
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
            }, child: Text("Next Page")
            ),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LayoutDemoApp()));
            }, child: Text("Layout")
            ),

            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ApiDemoPage()));
            }, child: Text("API Page")
            ),

            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AsyncDemoPage()));
            }, child: Text("Async API Page")
            ),

            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const StateHoistingDemo()));
            }, child: Text("StateHoisting Page")
            )
          ],
        ),
      ),
    );
  }
}
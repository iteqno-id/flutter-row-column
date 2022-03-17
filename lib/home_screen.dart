import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Row & Column'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 100,
                  width: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                  height: 100,
                  width: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  height: 100,
                  width: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 100,
                  width: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  height: 100,
                  width: 50,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.indigo,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                child: FlutterLogo(),
                radius: 24,
              ),
              title: Text('Tile Title'),
              subtitle: Text('Tile Subtitle'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    child: FlutterLogo(),
                    radius: 24,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tile Title', style: Theme.of(context).textTheme.titleMedium),
                      Text('Tile Subtitle',
                          style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 14)),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.chevron_right),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

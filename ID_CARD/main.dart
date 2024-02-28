import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Center(
          child: Text('id card',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2.0,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/amj.jpg'),
                radius: 45.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey[600],
              ),
            ),
            Text(
              'Alaina Maria Joe',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.amber[400],
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Level',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey[600],
              ),
            ),
            Text(
              '$level',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.amber[400],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.email,
                  size: 10.0,
                  color: Colors.white,
                ),
                Text(
                  'mariajoe03@gmail.com',
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level = level + 1;
          });
        },
        backgroundColor: Colors.grey[700],
        child: const Icon(
          Icons.add,
          size: 25.0,
          color: Colors.white70,
        ),
      ),
    );
  }
}

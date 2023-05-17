import 'package:flutter/material.dart';
import 'package:flutter02/mainGridView-1.1.dart';
import './res/listData.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _list = [];
  int _countNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutterapp')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${_countNumber}',
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _countNumber++;
                    print(_countNumber);
                  });
                },
                child: Text('add')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _countNumber++;
            print(_countNumber);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

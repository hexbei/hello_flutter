import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Calculator());
  }
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class Keyboard extends StatelessWidget {
  final String keyboardOfNum;
  final int type;
  const Keyboard(this.keyboardOfNum, this.type);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: type == 0
              ? Colors.brown.shade800
              : type != 1
                  ? Colors.orange.shade300
                  : Colors.grey,
          margin: EdgeInsets.all(1),
          child: Center(
            child: Text(
              keyboardOfNum,
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
          )),
      flex: 1,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Center(
        child: Text(
          '$_count',
          style: TextStyle(fontSize: 28),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_count;
          });
          print('count: $_count');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyCountChangeNotifier()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
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

class MyCountChangeNotifier with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Center(
        child: Text(
          '${context.watch<MyCountChangeNotifier>()._count}',
          style: TextStyle(fontSize: 28),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<MyCountChangeNotifier>().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

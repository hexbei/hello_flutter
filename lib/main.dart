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
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Container(
            color: Colors.black,
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                            alignment: FractionalOffset.bottomRight,
                            color: Colors.black,
                            height: 200,
                            child: Text(
                              '0',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 70),
                            ))),
                    Container(
                        color: Colors.black38,
                        height: 480,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: [
                                  const Keyboard("AC", 0),
                                  const Keyboard("7", 1),
                                  const Keyboard("4", 1),
                                  const Keyboard("1", 1),
                                  Expanded(
                                    child: Container(
                                        color: Colors.grey,
                                        padding: EdgeInsets.only(left: 90),
                                        margin: EdgeInsets.only(
                                            right: 0,
                                            top: 1,
                                            left: 1,
                                            bottom: 1),
                                        child: Align(
                                          child: Text(
                                            '0',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                fontSize: 28,
                                                color: Colors.white),
                                          ),
                                        )),
                                    flex: 1,
                                  ),
                                ],
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const Keyboard("+/-", 0),
                                  const Keyboard("8", 1),
                                  const Keyboard('5', 1),
                                  const Keyboard('2', 1),
                                  Expanded(
                                    child: Container(
                                      color: Colors.grey,
                                      margin: EdgeInsets.only(
                                          left: 0, top: 1, right: 1, bottom: 1),
                                    ),
                                    flex: 1,
                                  ),
                                ],
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  const Keyboard('%', 0),
                                  const Keyboard('9', 1),
                                  const Keyboard('6', 1),
                                  const Keyboard('3', 1),
                                  const Keyboard('.', 1),
                                ],
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  const Keyboard('/', 3),
                                  const Keyboard('X', 3),
                                  const Keyboard('ㄧ', 3),
                                  const Keyboard('+', 3),
                                  const Keyboard('=', 3),
                                ],
                              ),
                              flex: 1,
                            ),
                          ],
                        )),
                  ]),
            )));
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

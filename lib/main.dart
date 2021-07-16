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
                                  keyboard("AC", 0),
                                  keyboard("7", 1),
                                  keyboard("4", 1),
                                  keyboard("1", 1),
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
                                  keyboard("+/-", 0),
                                  keyboard("8", 1),
                                  keyboard('5', 1),
                                  keyboard('2', 1),
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
                                  keyboard('%', 0),
                                  keyboard('9', 1),
                                  keyboard('6', 1),
                                  keyboard('3', 1),
                                  keyboard('.', 1),
                                ],
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  keyboard('/', 3),
                                  keyboard('X', 3),
                                  keyboard('ㄧ', 3),
                                  keyboard('+', 3),
                                  keyboard('=', 3),
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

class keyboard extends StatelessWidget {
  String Str = "";
  int Type = 0;
  keyboard(@required String str, int type) {
    this.Str = str;
    this.Type = type;
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: Type == 0
              ? Colors.brown.shade800
              : Type != 1
                  ? Colors.orange.shade300
                  : Colors.grey,
          margin: EdgeInsets.all(1),
          child: Center(
            child: Text(
              Str,
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
          )),
      flex: 1,
    );
  }
}

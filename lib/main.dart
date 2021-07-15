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
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hello~'),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 70),
                              ))),
                      Container(
                          color: Colors.black38,
                          height: 480,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                          color: Colors.brown.shade800,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              'AC',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.grey,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '7',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.grey,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '4',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.grey,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '1',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
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
                                    Expanded(
                                      child: Container(
                                          color: Colors.brown.shade800,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '+/-',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.grey,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '8',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.grey,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '5',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.grey,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '2',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.grey,
                                        margin: EdgeInsets.only(
                                            left: 0,
                                            top: 1,
                                            right: 1,
                                            bottom: 1),
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
                                    Expanded(
                                      child: Container(
                                          color: Colors.brown.shade800,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '%',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.grey,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '9',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.grey,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '6',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.grey,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '3',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.grey,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '.',
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
                                    Expanded(
                                      child: Container(
                                          color: Colors.orange.shade300,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '/',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.orange.shade300,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              'X',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.orange.shade300,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              'ㄧ',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.orange.shade300,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '+',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          color: Colors.orange.shade300,
                                          margin: EdgeInsets.all(1),
                                          child: Center(
                                            child: Text(
                                              '=',
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
                            ],
                          )),
                    ]),
              ))),
    );
  }
}

// class Calculator extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {}
// }

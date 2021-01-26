import 'package:flutter/rendering.dart';
import 'spanishNum.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class Myapp extends StatefulWidget {
  @override
  MyappState createState() {
    return MyappState();
  }
}

class MyappState extends State<Myapp> {
  var spanNum = SpanishNumber();
  void displaySNumbers() {
    setState(() {
      List temp = spanNum.getCurrentValue(spanNum.increamentCounter());
      print(temp);
      spanNum.defaultText =
          (spanNum.counterGetter() - 2).toString() + " : " + temp.join(' : ');
    });
  }

  void resetNumber() {
    setState(() {
      spanNum.defaultText = 'Spanish Numbers';
      spanNum.counter = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My custom App'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(spanNum.defaultText,
                  style: TextStyle(color: Colors.black, fontSize: 30.0)),
              Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                onPressed: resetNumber,
                child: Text("Reset"),
                color: Colors.yellow,
              )
            ],
          ),
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: displaySNumbers,
        child: Text("Count"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.cyan,
        hoverColor: Colors.yellow,
        hoverElevation: 12.0,
        splashColor: Colors.blue,
      ),
    );
  }
}

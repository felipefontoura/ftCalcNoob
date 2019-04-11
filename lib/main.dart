import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final c1 = TextEditingController();
  final c2 = TextEditingController();
  final c3 = TextEditingController();

  var _resultado = 0;

  void _incrementCounter() {
    _resultado = (int.parse(c1.text)) + (int.parse(c2.text));

    setState(() {
      _resultado = (int.parse(c1.text)) + (int.parse(c2.text));
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: c1,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32),
              )
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: c2,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32),
              )
            ),
            
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                _resultado.toString(),
                style: TextStyle(fontSize: 32),
              )
            )

          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}

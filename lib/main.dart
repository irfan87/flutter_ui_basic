import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: 300,
        width: 300,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(30),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: Colors.amber,
          gradient: LinearGradient(colors: [
            Colors.orange,
            Colors.deepOrangeAccent
          ]),
          boxShadow: [
            BoxShadow(spreadRadius: 5, blurRadius: 10, color: Colors.grey, offset: Offset(0,10))
          ]
        ),
        child: Text('Welcome!'),
      )
    );
  }
}

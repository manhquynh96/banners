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
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text('My pictures'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: MaterialBanner(
        content:
            Text('Này cô gái dễ thương <3', style: TextStyle(fontSize: 23)),
        leading: CircleAvatar(child: Icon(Icons.mood)),
        actions: [
          RaisedButton(child: Text('BUTTON 1'), onPressed: () {}),
          RaisedButton(child: Text('BUTTON 2'), onPressed: () {}),
        ],
      ),
    );
  }
}

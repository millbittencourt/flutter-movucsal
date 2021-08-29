import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movucsal/pages/RegisterPage.dart';
import 'package:movucsal/widgets/ExpandedButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovUCSal',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyOtherHome(),
    );
  }
}

class MyOtherHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    handleRegisterClick() => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => RegisterPage()),
        );

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Nem sei'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 150),
            Text(
              'Aqui vai ter uma imagem chamativa',
            ),
            const SizedBox(height: 120),
            ExpandedButton(
              title: 'Fazer cadastro',
              color: Theme.of(context).primaryColor,
              handleOnClick: handleRegisterClick,
            ),
            const SizedBox(height: 30),
            ExpandedButton(
              title: 'Encontrar um caminho',
              color: Colors.deepOrange,
              handleOnClick: () {},
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    counter = 0;
  }

  void incrementCounter() {
    counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movucsal/pages/FindPathPage.dart';
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    handleRegisterClick() => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => RegisterPage()),
        );

    handleFindPathClick() => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => FindPathPage()),
        );

    return Scaffold(
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
              handleOnClick: handleFindPathClick,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

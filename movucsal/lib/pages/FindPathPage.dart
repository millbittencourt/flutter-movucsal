import 'package:flutter/material.dart';
import 'package:movucsal/widgets/ExpandedButton.dart';

class FindPathPage extends StatefulWidget {
  const FindPathPage() : super();

  @override
  _FindPathPageState createState() => _FindPathPageState();
}

class _FindPathPageState extends State<FindPathPage> {
  bool _acessivel = true;

  @override
  void initState() {
    super.initState();
    _acessivel = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Encontrar uma rota'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Frase para escolha um caminho',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 120),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Desejo encontrar apenas caminhos acessíveis'),
                Switch(
                    value: _acessivel,
                    onChanged: (bool newValue) {
                      setState(() {
                        _acessivel = newValue;
                      });
                    }),
              ],
            ),
            Text(
              'Escolha o seu ponto de partida',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              'Escolha o seu ponto de destino',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 120),
            ExpandedButton(
              title: 'Buscar Rota',
              color: Theme.of(context).primaryColor,
              handleOnClick: () => Navigator.of(context).pop(context),
            ),
          ],
        ),
      ),
    );
  }
}

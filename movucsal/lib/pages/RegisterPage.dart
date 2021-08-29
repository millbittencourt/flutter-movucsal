import 'package:flutter/material.dart';
import 'package:movucsal/widgets/ExpandedButton.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MovUCSal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Olá!! Bem vinda ao nosso app =)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            const SizedBox(height: 120),
            Text(
              'Ainda estamos em desenvolvimento, em breve teremos mais novidades!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              'Enquanto isso...',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 120),
            ExpandedButton(
              title: 'Voltar à página inicial',
              color: Theme.of(context).primaryColor,
              handleOnClick: () {},
            ),
          ],
        ),
      ),
    );
  }
}

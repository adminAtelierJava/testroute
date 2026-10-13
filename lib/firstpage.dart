import 'package:flutter/material.dart';
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Première page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Aller à la deuxième page'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:navigationroute/firstpage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
        '/four': (context) => FourthPage(),
      },
    );
  }
}



class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Deuxième page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Aller à la troisième page'),
          onPressed: () {
            Navigator.pushNamed(context, '/third');
          },
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quatrième page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Aller à la quatrième page'),
          onPressed: () {
            Navigator.pushNamed(context, '/four');
          },
        ),
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Troisème page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Retour'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

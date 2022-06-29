import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // ignore: non_constant_identifier_names
  void SaiPessoa() {
    print('Foi');
  }

  void EntraPessoa() {
    print('tchau');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Pode entrar!',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        const Text(
          '0',
          style: TextStyle(
            fontSize: 90,
            color: Colors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: SaiPessoa,
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(100, 100),
                primary: Colors.grey,
                shape: 
              ),
              child: const Text(
                'Saiu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            TextButton(
              onPressed: EntraPessoa,
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(100, 100),
                primary: Colors.grey,
                //padding: const EdgeInsets.all(30),
              ),
              child: const Text(
                'Entrou',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

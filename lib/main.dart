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

  // ignore: non_constant_identifier_names
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
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        //const SizedBox(height: 30), é uma maneira de dar espaçamento
        const Padding(
          padding: EdgeInsets.only(top: 35, left: 10, right: 10, bottom: 50),
          child: Text(
            '0',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: SaiPessoa,
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(90, 90),
                primary: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text(
                'Saiu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(width: 30),
            TextButton(
              onPressed: EntraPessoa,
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(90, 90),
                primary: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
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

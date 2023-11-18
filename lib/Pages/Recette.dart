import 'package:flutter/material.dart';

class RecetteBeer extends StatefulWidget {
  const RecetteBeer({super.key});

  @override
  _RecetteBeerState createState() => _RecetteBeerState();
}

class _RecetteBeerState extends State<RecetteBeer> {

  final int _numPages = 10;
  final int _currentPage = 0;

  @override
  Widget build(BuildContext context) {

var pages = List.generate(
      _numPages,
      (index) => Center(
        child: Text(
          "Page ${index + 1}",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 193, 7),
        title: const Text(
          'Etape de Fabrication',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: const Text(
                '0. Phase Préparation',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Vous avez besoin du matériel suivant pour realiser votre bière :',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('- Une dame-jeanne'),
                Text('- Un barboteur'),
                Text('- Un thermomètre'),
                Text('- Un Tuyau d extraction'),
                Text('- Plusieurs casseroles'),
                Text('- Une passoire à maille fines'),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                "Le matériel utile à la fabrication doit être propre et stérilisé. Nous vous conseillons ...",
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/step00.png',
                width: 250,
                height: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

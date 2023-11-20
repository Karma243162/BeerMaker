import 'package:beermaker/Pages/Recette/Recette1.dart';
import 'package:beermaker/Pages/Recette/Recette4.dart';
import 'package:flutter/material.dart';

class RecetteBeer5 extends StatefulWidget {
  const RecetteBeer5({super.key});

  @override
  _RecetteBeer5State createState() => _RecetteBeer5State();
}

class _RecetteBeer5State extends State<RecetteBeer5> {
  @override
  Widget build(BuildContext context) {
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
                '4- Le houblonnage',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                "Calculer la quantité de houblon à ajouter. Différentes recettes existent, les houblons peuvent être complétés par des épices. Faites bouillir le moût. Dès que l'ébullition commence, écumer et ajouter le houblon amer. Laisser bouillir ce mélange sans couvrir pendant 1h30 pour retirer de l’amertume. 10-15 minutes avant la fin de cette ébullition, ajouter le houblin aromatique. Retirer le houblon en le filtrant. Éviter cette étape en plaçant le houblon dans un filtre à thé en papier. Le choix du houblon doit être fait en fonction de son taux IBU qui est l’unité d’amertume. ",
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/step21.png',
                width: 250,
                height: 250,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Image.asset(
                    'assets/previous.png',
                    width: 20,
                    height: 20,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RecetteBeer4()),
                    );
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/next.png',
                    width: 20,
                    height: 20,
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

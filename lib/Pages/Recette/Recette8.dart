import 'package:beermaker/Pages/Recette/Recette1.dart';
import 'package:beermaker/Pages/Recette/Recette4.dart';
import 'package:beermaker/Pages/Recette/Recette7.dart';
import 'package:flutter/material.dart';

class RecetteBeer8 extends StatefulWidget {
  const RecetteBeer8({super.key});

  @override
  _RecetteBeer8State createState() => _RecetteBeer8State();
}

class _RecetteBeer8State extends State<RecetteBeer8> {
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
                '7- La mise en bouteille',
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
                "Mettre en bouteille (stérilisées et séchées) en utilisant un tuyau d'extraction avec embout anti-lie. Le but est de récupérer le liquide clair et d’éliminer les précipités et dépots. placer l’embout anti-lie sur le fond de la bonbonne et l’autre bout au fond de la bouteille. La bonbonne doit être placée très en hauteur par rapport à la bouteille. Utiliser des bouteilles en verre teinté propres et sèches, qui ferment avec un bouchon à vis ou à clapet. Les bouteilles doivent être conservées verticalement. Pendant une semaine conserver ces bouteilles à 20°C. Puis pendant 4 à 8 semaines, les gardes au frais, entre 6 et 10°C. La bière se conserve 1 an, idéalement entre 10 et 15°C à l’abri de la lumière ou simplement au réfrigérateur.",
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/step40.png',
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
                          builder: (context) => const RecetteBeer7()),
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

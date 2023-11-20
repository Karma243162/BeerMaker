import 'package:beermaker/Pages/Recette/Recette1.dart';
import 'package:beermaker/Pages/Recette/Recette3.dart';
import 'package:beermaker/Pages/Recette/Recette5.dart';
import 'package:flutter/material.dart';

class RecetteBeer4 extends StatefulWidget {
  const RecetteBeer4({super.key});

  @override
  _RecetteBeer4State createState() => _RecetteBeer4State();
}

class _RecetteBeer4State extends State<RecetteBeer4> {
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
                '3- Filtrer la maîshe',
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
                "Au dessus d’une seconde casserole, verser la maîshe dans une grande passoie (tapisser si besoin d’un linge propre) pour obtenir la drêche (résidu solide du malt). Pour récupérer les sucres restants dans la drêche égouttée, verser au-dessus de la drêche l’eau de rinçage préalablement montée à 80°C.L’eau de brassage associé à l’eau de rinçage s’appelle le moût. Les résidus de malt sont compostables. ",
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/step20.png',
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
                          builder: (context) => const RecetteBeer3()),
                    );
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/next.png',
                    width: 20,
                    height: 20,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RecetteBeer5()),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:beermaker/Pages/Recette/Recette1.dart';
import 'package:beermaker/Pages/Recette/Recette3.dart';
import 'package:flutter/material.dart';

class RecetteBeer2 extends StatefulWidget {
  const RecetteBeer2({super.key});

  @override
  _RecetteBeer2State createState() => _RecetteBeer2State();
}

class _RecetteBeer2State extends State<RecetteBeer2> {
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
                '1- L\'empâtage',
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
                "Note: Le malt blond peut s'utiliser seul. Les malts plus foncés ne s’utilisent qu’en petite dose pour moduler le goût de la bière.Si vous avez achetez du malt en grain entier, le concasser avec un moulin à céréales, un mixer ou encore un rouleau à pâtisserie. Définissez la quantité d’eau de brassage nécessaire, puis versez la dans une grande casserole.Porter cette eau à une température de 50 °C en vérifiant avec le thermomètre, puis ajouter le malt concassé. ",
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/step10.png',
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
                          builder: (context) => const RecetteBeer()),
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
                          builder: (context) => const RecetteBeer3()),
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

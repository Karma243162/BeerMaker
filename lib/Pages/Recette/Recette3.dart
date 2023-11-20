import 'package:beermaker/Pages/Recette/Recette1.dart';
import 'package:beermaker/Pages/Recette/Recette2.dart';
import 'package:beermaker/Pages/Recette/Recette4.dart';
import 'package:flutter/material.dart';

class RecetteBeer3 extends StatefulWidget {
  const RecetteBeer3({super.key});

  @override
  _RecetteBeer3State createState() => _RecetteBeer3State();
}

class _RecetteBeer3State extends State<RecetteBeer3> {
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
                '2- Le brassage par paliers',
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
                "Brasser la mixture malt+eau, appelée maîshe, pendant 30 min, à 40°C environ. une grande cuillère percée durant la chauffe et laisser reposer une fois la température du palier atteinte. Monter en température la maîshe à 60-65°C et maintenir cette température environ 30 min. Augmenter la température à 68-70°C et maintenir cette température environ 30 min. Augmenter la température à 78°C et maintenir cette température environ 30 min. ",
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/step11.png',
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
                          builder: (context) => const RecetteBeer2()),
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
                          builder: (context) => const RecetteBeer4()),
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

import 'package:flutter/material.dart';

class RecetteBeer extends StatefulWidget {
  @override
  _RecetteBeerState createState() => _RecetteBeerState();
}

class _RecetteBeerState extends State<RecetteBeer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 193, 7),
        title: Text(
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
              child: Text(
                '0. Phase Préparation',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Vous avez besoin du matériel suivant pour realiser votre bière :',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Column(
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
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Le matériel utile à la fabrication doit être propre et stérilisé. Nous vous conseillons ...",
              ),
            ),
            SizedBox(height: 20),
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

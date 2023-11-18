import 'package:flutter/material.dart';
import '../Fabrication.dart';

class OutilsFabrication extends StatefulWidget {
  @override
  _OutilsFabricationState createState() => _OutilsFabricationState();
}

class _OutilsFabricationState extends State<OutilsFabrication> {
  TextEditingController volumeController = TextEditingController();
  TextEditingController alcoolController = TextEditingController();
  TextEditingController ebcController = TextEditingController();

  String resultatMalt = '';

  void _onBrasserButtonPressed() {
    double volume = double.tryParse(volumeController.text) ?? 0;
    double alcool = double.tryParse(alcoolController.text) ?? 0;

    // Appel à la fonction de calcul
    String resultat = calculerQuantiteMalt(volume, alcool);

    setState(() {
      this.resultatMalt = resultat;
    });
  }

  String calculerQuantiteMalt(double volume, double alcoolDesire) {
    double quantiteMalt = (volume * alcoolDesire) / 20;
    return 'Quantité de malt nécessaire : ${quantiteMalt.toStringAsFixed(2)} kg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 193, 7),
        title: Text(
          'Outils de Fabrication',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: volumeController,
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Volume de production (en L)'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: alcoolController,
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Volume d\'alcool recherché (%)'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: ebcController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Moyenne EBC des Grains'),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: OutlinedButton(
                onPressed: _onBrasserButtonPressed,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 255, 193, 7),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                child: Text(
                  'Brasser !',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              resultatMalt,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

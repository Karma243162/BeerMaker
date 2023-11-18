import 'package:flutter/material.dart';
import '../Fabrication.dart';

class OutilsFabrication extends StatefulWidget {
  const OutilsFabrication({super.key});

  @override
  _OutilsFabricationState createState() => _OutilsFabricationState();
}

class _OutilsFabricationState extends State<OutilsFabrication> {
  TextEditingController volumeController = TextEditingController();
  TextEditingController alcoolController = TextEditingController();
  TextEditingController ebcController = TextEditingController();

  String volumeProd = "";
  String alcoolRech = "";
  String ebcRech = "";

  double volume = 0;
  double alcool = 0;
  double ebc = 0;
  bool melange = false;

  /*  String resultatMalt = Calcul.calculerQuantiteMalt(volume, alcool);
    String resultatEauBrassage =
        Calcul.calculerQuantiteEauBrassage(quantiteMalt);
    String resultatEauRincage =
        Calcul.calculerQuantiteEauRincage(volume, alcool); */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 193, 7),
        title: const Text(
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
              decoration: const InputDecoration(
                  labelText: 'Volume de production (en L)'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: alcoolController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: 'Volume d\'alcool recherché (%)'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: ebcController,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(labelText: 'Moyenne EBC des Grains'),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: OutlinedButton(
                onPressed: () {
                  volumeProd = volumeController.text;
                  alcoolRech = alcoolController.text;
                  ebcRech = ebcController.text;
                  volume = double.parse(volumeProd);
                  alcool = double.parse(alcoolRech);
                  ebc = double.parse(ebcRech);
                 

                  setState(() {
                    melange = true;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 255, 193, 7),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(250, 50),
                  ),
                ),
                child: const Text(
                  'Brasser !',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Visibility(
                visible: melange,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Quantité de malt : ${Calcul().calculerQuantiteMalt(volume, alcool)} Kg",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Quantité d'eau de brassage : ${Calcul().calculerQuantiteEauBrassage(volume, alcool)} L",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Quantité d'eau de rincage : ${Calcul().calculerQuantiteEauRincage(volume, alcool)} L",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Quantité de houblou amérisant : ${Calcul().quantHoublouAmerisant(volume, alcool)} g",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Quantité de houblou aromatique : ${Calcul().quantHoublouAromatique(volume, alcool)} g",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Quantité de levure : ${Calcul().quantLevure(volume, alcool)} g",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
/*               Text(
                "Quantité de malt : ${Calcul().calculerQuantiteMalt(volume, alcool)} Kg",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ), */
                ),
          ],
        ),
      ),
    );
  }
}

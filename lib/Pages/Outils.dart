import 'package:flutter/material.dart';
import '../Fabrication.dart';

class OutilsFabrication extends StatefulWidget {
  const OutilsFabrication({super.key});

  @override
  _OutilsFabricationState createState() => _OutilsFabricationState();
}

class _OutilsFabricationState extends State<OutilsFabrication> {
  String _srmToRGB() {
    // Returns an RGB value based on SRM
    double srm = Calcul().calculerSrm(volume, alcool, ebc);
    double r = 0;
    double g = 0;
    double b = 0;
    if (srm >= 0 && srm <= 1) {
      r = 240;
      g = 239;
      b = 181;
    } else if (srm > 1 && srm <= 2) {
      r = 233;
      g = 215;
      b = 108;
    } else if (srm > 2) {
// Set red decimal
      if (srm < 70.6843) {
        r = 243.8327 - (6.4040 * srm) + (0.0453 * srm * srm);
      } else {
        r = 17.5014;
      }
// Set green decimal
      if (srm < 35.0674) {
        g = 230.929 - 12.484 * srm + 0.178 * srm * srm;
      } else {
        g = 12.0382;
      }
// Set blue decimal
      if (srm < 4) {
        b = -54 * srm + 216;
      } else if (srm >= 4 && srm < 7) {
        b = 0;
      } else if (srm >= 7 && srm < 9) {
        b = 13 * srm - 91;
      } else if (srm >= 9 && srm < 13) {
        b = 2 * srm + 8;
      } else if (srm >= 13 && srm < 17) {
        b = -1.5 * srm + 53.5;
      } else if (srm >= 17 && srm < 22) {
        b = 0.6 * srm + 17.8;
      } else if (srm >= 22 && srm < 27) {
        b = -2.2 * srm + 79.4;
      } else if (srm >= 27 && srm < 34) {
        b = -0.4285 * srm + 31.5714;
      } else {
        b = 17;
      }
    }
    int red = r.toInt();
    int green = g.toInt();
    int blue = b.toInt();
    String rr = red.toRadixString(16);
//red.toHexString(red);
    String gg = green.toRadixString(16);
    String bb = blue.toRadixString(16);
    String rgb = "0xFF";
    if (rr.length < 2) {
      rr = "0" + rr;
    } else if (gg.length < 2) {
      gg = "0" + gg;
    } else if (bb.length < 2) {
      bb = "0" + bb;
    }
    rgb = rgb + rr + gg + bb;
    return rgb;
  }

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
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      "Colorimétrie",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "MCU = ${Calcul().calculerMaltColorUnits(volume, alcool, ebc).toStringAsFixed(2)} ",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "EBC = ${Calcul().calculerEbc(volume, alcool, ebc).toStringAsFixed(2)} ",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "SRM = ${Calcul().calculerSrm(volume, alcool, ebc).toStringAsFixed(2)} ",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        ElevatedButton(
                          onPressed: () {
                            // Ajoutez ici le code à exécuter lorsque le bouton est pressé
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(int.parse(_srmToRGB())),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Enregistrer",
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          color: Color(int.parse(_srmToRGB())),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _srmToRGB(),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    /*   Text(
                      "MCU : ${Calcul().calculerMaltColorUnits(volume, alcool, ebcRech)} g",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ), */
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

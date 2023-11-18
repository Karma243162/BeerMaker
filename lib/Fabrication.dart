import 'dart:math';



class Calcul {
/*   static String calculerQuantiteMalt(double volume, double alcoolDesire) {
    double quantiteMalt = (volume * alcoolDesire) / 20;
    return 'Quantité de malt : ${quantiteMalt.toStringAsFixed(2)} kg';
  }

  static String calculerQuantiteEauBrassage(double quantiteMalt) {
    double quantiteEauBrassage = quantiteMalt * 2.8;
    return 'Volume d\'eau de brassage  : ${quantiteEauBrassage.toStringAsFixed(2)} L';
  }

  static String calculerQuantiteEauRincage(
      double volume, double quantiteEauBrassage) {
    double quantiteEauRincage = (volume * 1.25) - (quantiteEauBrassage * 0.7);
    return 'Volume d\'eau de rincage  : ${quantiteEauRincage.toStringAsFixed(2)} L';
  } */

  double calculerQuantiteMalt(volume, alcool) {
    return (volume * alcool) / 20;
  }
  double calculerQuantiteEauBrassage(volume, alcool) {
    return calculerQuantiteMalt(volume, alcool) * 2.8;
  }

  double calculerQuantiteEauRincage(volume, alcool) {
    return (volume * 1.25) -
        (calculerQuantiteEauBrassage(volume, alcool) * 0.7);
  }


  double quantHoublouAmerisant(volume, alcool) {
    return volume * 3;
  }

  double quantHoublouAromatique(volume, alcool) {
    return volume * 1;
  }

  double quantLevure(volume, alcool) {
    return volume / 2;
  }

  double calculerMaltColorUnits(volume, alcool, ebcRech) {
    return 4.23 * (ebcRech * calculerQuantiteMalt(volume, alcool) / volume);
  }

}

import 'dart:math';

class Calcul {


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

  double calculerMaltColorUnits(volume, alcool, ebc) {
    return 4.23 * (ebc * calculerQuantiteMalt(volume, alcool) / volume);
  }

  double calculerEbc(volume, alcool, ebc) {
    return 2.9396 * pow(calculerMaltColorUnits(volume, alcool, ebc), 0.6859);
  }

  double calculerSrm(volume, alcool, ebc) {
    return 0.508 * calculerEbc(volume, alcool, ebc);
  }
}

import 'package:flutter/material.dart';

class Calcul {
  static String calculerQuantiteMalt(double volume, double alcoolDesire) {
    double quantiteMalt = (volume * alcoolDesire) / 20;
    return 'Quantité de malt nécessaire : ${quantiteMalt.toStringAsFixed(2)} kg';
  }

  static String calculerQuantiteEauBrassage(
      double volume, double ratioEauGrain) {
    double quantiteEauBrassage = volume * ratioEauGrain;
    return 'Quantité d\'eau de brassage nécessaire : ${quantiteEauBrassage.toStringAsFixed(2)} litres';
  }
}

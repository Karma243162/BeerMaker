import 'package:beermaker/Pages/Outils.dart';
import 'package:beermaker/Pages/Recette.dart';
import 'package:flutter/material.dart';
import 'Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'BeerMaker',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 213, 206, 7)),
        useMaterial3: true,
      ),
         home: const SplashScreen(), 
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/recette': (BuildContext context) => const RecetteBeer(),
        '/outil': (BuildContext context) => const OutilsFabrication(),
      },
      initialRoute: "/splash",
    );

  }
  
}

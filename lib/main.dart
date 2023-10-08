import 'package:flutter/material.dart';
import 'Home.dart'; 
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

        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 213, 206, 7)),
        useMaterial3: true,
      ),
         home: SplashScreen(), 
    );
  }
}

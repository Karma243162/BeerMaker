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
        title: Text(
          'Recette Bière',
          style: TextStyle(color: Color.fromARGB(255, 255, 193, 7)),
        ),
      ),
      body: Center(
        child: Column(
        
        ),
      ),
    );
  }
}

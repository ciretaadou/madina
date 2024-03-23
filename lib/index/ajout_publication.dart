import 'package:flutter/material.dart';
import 'package:madina/couleur_page.dart';

class AjoutPublication extends StatefulWidget {
  const AjoutPublication({Key? key}) : super(key: key);

  @override
  State<AjoutPublication> createState() => _AjoutPublicationState();
}

class _AjoutPublicationState extends State<AjoutPublication> with SingleTickerProviderStateMixin {
  late AnimationController _controller;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajout Publication"),
        backgroundColor: col_pp,
      ),
      body: Center(
        child: Text("Ajouter une publication"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:odc_projet_ecommerce/Pages/HomePage.dart';


class SplashScree extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/v1.jpg",
              height: 300,
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Notre pages categories",
                style: TextStyle(
                  color: Color(0xFF38A3A5),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50),
            InkWell(
              //redirection vers la page home
              onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext)=>HomePage() ));
              },
              // pour l'animation du conteneur
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF38A3A5),
                ),
                child: Text(
                  "Visiter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
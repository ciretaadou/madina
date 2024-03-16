import 'package:flutter/material.dart';
import 'package:madina/couleur_page.dart';

class ProfilPage  extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body:  ListView(
          children: [

            SizedBox(height: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: col_pp ,width: 2),
                      image: DecorationImage(
                          image: AssetImage("images/findo.jpg"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                SizedBox(height: 5),
                Text("Mamadou Cire Diaby", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Text("Compte client", style: TextStyle(fontSize: 15),),
                SizedBox(height: 5),
                Container(
                  height: 3,
                  color: Colors.brown,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),

              ],
            ),
          ],
        )

    );
  }
}

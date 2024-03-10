import 'package:flutter/material.dart';
import 'package:madina/couleur_page.dart';



class Nouveau extends StatefulWidget {
  const Nouveau({Key? key}) : super(key: key);

  @override
  State<Nouveau> createState() => _NouveauState();
}

class _NouveauState extends State<Nouveau> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        SizedBox(height: 8),
        Container(
            width: MediaQuery.of(context).size.width,
            height: 25,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(width: 20),
                _categorie("Tous", col_pp, height: 5),
                SizedBox(width: 10),
                _categorie("Vintage", Colors.grey, height: 5),
                SizedBox(width: 10),
                _categorie("Vêtement", Colors.grey, height: 5),
                SizedBox(width: 10),
                _categorie("Chaussure", Colors.grey, height: 5),
                SizedBox(width: 10),
                _categorie("Chaussure", Colors.grey, height: 5),
                SizedBox(width: 10),
                _categorie("Chaussure", Colors.grey, height: 5),
                SizedBox(width: 10),
                _categorie("Chaussure", Colors.grey, height: 5),
                SizedBox(width: 10),
                _categorie("Chaussure", Colors.grey, height: 5),
                SizedBox(width: 10),
                _categorie("Chaussure", Colors.grey, height: 5),
                SizedBox(width: 10),
                _categorie("Chaussure", Colors.grey, height: 5),
              ],
            )),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width / 2.2,
              height: 200,
              color: Colors.black,
              child: Column(
                children: [
                  Container(
                    height: 170,
                    clipBehavior: Clip.hardEdge,
                    width: MediaQuery.of(context).size.width * .34,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      //image: DecorationImage(
                        //image: AssetImage("images/findo.jpg")
                     // )
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width / 2.2,
              height: 200,
              color: Colors.blue,
            ),
          ],
        )
      ],
    );
  }

  Widget _categorie(String text, Color textColor,
      {double height = 0, bool isPrimaryCard = false}) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: height),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: textColor.withAlpha(isPrimaryCard ? 200 : 50),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.black, fontSize: 12),
      ),
    );
  }


}

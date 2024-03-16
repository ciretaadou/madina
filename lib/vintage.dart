import 'package:flutter/material.dart';
import 'package:madina/couleur_page.dart';


class Vintage extends StatefulWidget {
  const Vintage({Key? key}) : super(key: key);

  @override
  State<Vintage> createState() => _VintageState();
}

class _VintageState extends State<Vintage>  {

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
                _categorie("Toutes les categories", col_pp, height: 5),
                SizedBox(width: 10),
                _categorie("Telephone", Colors.grey, height: 5),
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      //color: Colors.grey.shade200,
                      border: Border.all(color: col_pp ,width: 2)
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 170,
                            width: MediaQuery.of(context).size.width / 2.2,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage("images/findo.jpg"),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  color: Colors.red),
                              child: Text(
                                "Vintage",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("Fauteuil de bureau"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("categorie : " , style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Meuble"),
                        ],
                      ),
                      SizedBox(height: 2),
                      _categorie("Prix:1.000.000 gnf", Colors.blue, height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: col_pp ,width: 2)
                            ),
                            child: IconButton(
                              onPressed: (){

                              },
                              icon: Icon(Icons.shop, color: col_pp,),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),

            Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width / 2.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  //color: Colors.grey.shade200,
                  border: Border.all(color: col_pp ,width: 2)
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 170,
                        width: MediaQuery.of(context).size.width / 2.2,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: AssetImage("images/iphone.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              color: Colors.red),
                          child: Text(
                            "Vintage",
                            style: TextStyle(
                                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("Iphone 12 pro"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("categorie : " , style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Telephone"),
                    ],
                  ),
                  SizedBox(height: 2),
                  _categorie("Prix:2.500.000 gnf", Colors.blue, height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: col_pp ,width: 2)
                        ),
                        child: IconButton(
                          onPressed: (){

                          },
                          icon: Icon(Icons.shop, color: col_pp,),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),

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

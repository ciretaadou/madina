import 'package:flutter/material.dart';
import 'package:madina/couleur_page.dart';


class Panier extends StatefulWidget {
  const Panier({Key? key}) : super(key: key);

  @override
  State<Panier> createState() => _PanierState();
}

class _PanierState extends State<Panier>  {

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
    return Scaffold(

      body: ListView(
        children: [

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
                          top: 1,
                          left: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: col_pp,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: IconButton(
                              onPressed: (){

                              },
                              icon: Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 35,),
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
                    SizedBox(height: 5),
                    _categorie("Prix:1.000.000 gnf", col_pp_prix, height: 5),
                    SizedBox(height: 5),
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
                          top: 1,
                          left: 4,
                          child: Container(
                            decoration: BoxDecoration(
                                color: col_pp,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: IconButton(
                              onPressed: (){

                              },
                              icon: Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 35,),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text("Iphone 12 pro max"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("categorie : " , style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Telephone"),
                      ],
                    ),
                    SizedBox(height: 2),
                    _categorie("Prix:2.500.000 gnf", col_pp_prix, height: 5),
                    /*Row(
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
                  )*/
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
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

import 'package:flutter/material.dart';
import 'package:madina/couleur_page.dart';


class RecherchePage extends StatefulWidget {
  const RecherchePage({Key? key}) : super(key: key);

  @override
  State<RecherchePage> createState() => _RecherchePageState();
}

class _RecherchePageState extends State<RecherchePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  TextEditingController _searchController = TextEditingController(); // Controller pour le champ de recherche
  String _searchText = ""; // Texte de recherche



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [

          SizedBox(height: 8),
          /// recherche ---
          Stack(
            children: [
              TextFormField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    _searchText = value; // Met à jour le texte de recherche lors de la saisie
                  });
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Recherher",
                  contentPadding: EdgeInsets.all(0),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10 )
                  ),
                  //fillColor: Color.fromRGBO(220, 220, 220, 1),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              Positioned(
                  right: 8,
                  bottom: 7,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF5F67EA)
                    ),
                    child: Icon(
                      Icons.mic_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  )
              )
            ],
          ),
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

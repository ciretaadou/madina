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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.grey, width: 2)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add),
                      Text(
                        "Ajout Publication",
                        style: TextStyle(
                            color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),

                Text("Informations personnelles", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.mail),
                    Text(" mamadourramata03@gmail.com", style: TextStyle(fontSize: 15),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.phone),
                    Text(" 610101010", style: TextStyle(fontSize: 15),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.gps_fixed),
                    Text(" lambandji", style: TextStyle(fontSize: 15),),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.grey,
                  ),
                  child: Text(
                    "Mes Publications",
                    style: TextStyle(
                        color: Colors.black, fontSize: 16),
                  ),
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
                                child: IconButton(
                                  onPressed: (){

                                  },
                                  icon: Icon(Icons.shopping_cart_outlined, color: col_pp, size: 35,),
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
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      //border: Border.all(color: col_pp ,width: 2),
                                      color: Colors.transparent
                                  ),
                                  child: IconButton(
                                    onPressed: (){

                                    },
                                    icon: Icon(Icons.shopping_cart_outlined, color: col_pp, size: 35,),
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
          ],
        )

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

import 'package:flutter/material.dart';
import 'package:madina/couleur_page.dart';
import 'package:madina/index/ajout_publication.dart';


import 'detail_publication.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [

          SizedBox(height: 8),
      Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
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
              border: Border.all(color: col_pp ,width: 1)
              ),
            child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPublication()),
                  );
                },
                child: Stack(
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
                  left: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                    radius: 18,
                    //backgroundImage: AssetImage("images/taadou.jpg"),
                    backgroundColor: col_pp,
                    child: CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage("images/iphone.jpg"),
                    ),
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: col_pp_vintage
                    ),
                    child: Text(
                    "Vintage",
                    style: TextStyle(
                    color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                   ),
                  ),
                 ],
                ),
              ),
              /// autre images
              SizedBox(height: 2),
              Container(
              width: MediaQuery.of(context).size.width,
              height: 25,
              child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
              SizedBox(width: 20),
              _categorieImages("images/findo.jpg", Colors.grey),
              SizedBox(width: 10),
              _categorieImages("images/iphone.jpg", Colors.grey),
              SizedBox(width: 20),
              _categorieImages("images/findo.jpg", Colors.grey),
              SizedBox(width: 10),
              _categorieImages("images/iphone.jpg", Colors.grey),
              ],
            )),

            Text("Fauteuil de bureau"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("categorie : " , style: TextStyle(fontWeight: FontWeight.bold),),
                Text("Meuble"),
              ],
            ),
            SizedBox(height: 2),



            _categorie("Prix:1.000.000 gnf", col_pp_prix, height: 5),
            ],
            ),
            ),

            Container(
              margin: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width / 2.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  //color: Colors.grey.shade200,
                  border: Border.all(color: col_pp ,width: 1)
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPublication()),
                      );
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 170,
                          width: MediaQuery.of(context).size.width / 2.2,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage("images/chaussure.jpg"),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Positioned(
                          top: 1,
                          left: 1,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 18,
                              //backgroundImage: AssetImage("images/taadou.jpg"),
                              backgroundColor: col_pp,
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage("images/iphone.jpg"),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          right: 5,
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                color: col_pp_vintage
                            ),
                            child: Text(
                              "Vintage",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  /// autre images
                  SizedBox(height: 2),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 25,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          SizedBox(width: 20),
                          _categorieImages("images/findo.jpg", Colors.grey),
                          SizedBox(width: 10),
                          _categorieImages("images/iphone.jpg", Colors.grey),
                          SizedBox(width: 20),
                          _categorieImages("images/findo.jpg", Colors.grey),
                          SizedBox(width: 10),
                          _categorieImages("images/iphone.jpg", Colors.grey),
                        ],
                      )),

                  Text("Fauteuil de bureau"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("categorie : " , style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Meuble"),
                    ],
                  ),
                  SizedBox(height: 2),



                  _categorie("Prix:1.000.000 gnf", col_pp_prix, height: 5),
                ],
              ),
            ),

        ],
      ),



    ]),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  AjoutPublication(
                  ),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                const begin = Offset(1.0, 0.0); // Début de la transition
                const end = Offset.zero; // Fin de la transition
                const curve = Curves.linear; // Courbe d'animation

                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));
                var offsetAnimation = animation.drive(tween);

                return SlideTransition(
                  position: offsetAnimation,
                  child: child,
                );
              },
            ),
          );
        },
        child: Icon(Icons.add),
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

  Widget _categorieImages(String images, Color textColor) {
    return Container(
        height: 100,

    width: 30,
    //clipBehavior: Clip.hardEdge,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),

    image: DecorationImage(
    image: AssetImage("${images}"),
    fit: BoxFit.cover
    )
    )
    ,
    );
  }


}

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Savoir plus"),
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/c1.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Text("Chaussure adidas", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
          Text("200.000 FGN", style: TextStyle(fontSize: 25, color: Colors.grey), textAlign: TextAlign.center),
          Text("Adidas c'est une marque tendance gagner cette jolie paire avec un prix abordable et une qualité ", style: TextStyle(fontSize: 18, color: Colors.grey)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.star, color: Colors.yellow, size: 35),
              Icon(Icons.star, color: Colors.yellow, size: 35),
              Icon(Icons.star_outline, size: 35, color: Colors.yellow),
              Icon(Icons.star_outline, size: 35, color: Colors.yellow),
              Icon(Icons.star_outline, size: 35, color: Colors.yellow),
            ],
          ),

          Container(
            height: 60,
            width: largeur/4,
            margin: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Ajouter au panier", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)),
                Icon(Icons.shop, size: 30, color: Colors.white,)
              ],
            ),
          ),

          Container(
            height: 15,
            color: Colors.grey.shade300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Article similaire", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              IconButton(
                onPressed: ()=>{},
                icon: Icon(Icons.arrow_forward
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [

                SizedBox(width: 10,),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => DetailsPage())),
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage("assets/c3.jpg"),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => DetailsPage())),
                      child: Container(
                        width: 150,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Retro", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            SizedBox(height: 3),
                            Text("400.000 GNF", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 14),
                                Icon(Icons.star, color: Colors.yellow, size: 14),
                                Icon(Icons.star, color: Colors.yellow, size: 14),
                                Icon(Icons.star, color: Colors.yellow, size: 14),
                                Icon(Icons.star_outline, size: 14),
                              ],
                            )
                          ],

                        ),

                      ),
                    )
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => DetailsPage())),
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage("assets/c1.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 150,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Basket Adidas", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          SizedBox(height: 3),
                          Text("200.000 GNF", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 14),
                              Icon(Icons.star, color: Colors.yellow, size: 14),
                              Icon(Icons.star, color: Colors.yellow, size: 14),
                              Icon(Icons.star_outline, size: 14),
                              Icon(Icons.star_outline, size: 14),
                            ],
                          )
                        ],

                      ),

                    )
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => DetailsPage())),
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage("assets/c4.jpg",),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 150,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Basket Puma", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          SizedBox(height: 3),
                          Text("150.000 GNF", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 14),
                              Icon(Icons.star, color: Colors.yellow, size: 14),
                              Icon(Icons.star_outline, size: 14),
                              Icon(Icons.star_outline, size: 14),
                              Icon(Icons.star_outline, size: 14),
                            ],
                          )
                        ],

                      ),

                    )
                  ],
                ),


                SizedBox(width: 10,),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => DetailsPage())),
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage("assets/c2.jpg"),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                    GestureDetector(
                      onTap: () => {},
                      child: Container(
                        width: 150,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Basket", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            SizedBox(height: 3),
                            Text("250.000 GNF", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.yellow, size: 14),
                                Icon(Icons.star, color: Colors.yellow, size: 14),
                                Icon(Icons.star, color: Colors.yellow, size: 14),
                                Icon(Icons.star, color: Colors.yellow, size: 14),
                                Icon(Icons.star_outline, size: 14),
                              ],
                            )
                          ],

                        ),

                      ),
                    )
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => DetailsPage())),
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage("assets/c3.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 150,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Basket Adidas", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          SizedBox(height: 3),
                          Text("200.000 GNF", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 14),
                              Icon(Icons.star, color: Colors.yellow, size: 14),
                              Icon(Icons.star, color: Colors.yellow, size: 14),
                              Icon(Icons.star_outline, size: 14),
                              Icon(Icons.star_outline, size: 14),
                            ],
                          )
                        ],

                      ),

                    )
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => DetailsPage())),
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage("assets/c6.jpg",),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 150,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Basket Puma", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          SizedBox(height: 3),
                          Text("150.000 GNF", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 14),
                              Icon(Icons.star, color: Colors.yellow, size: 14),
                              Icon(Icons.star_outline, size: 14),
                              Icon(Icons.star_outline, size: 14),
                              Icon(Icons.star_outline, size: 14),
                            ],
                          )
                        ],

                      ),

                    )
                  ],
                ),
              ],
            ),
          ),

        ],
      )

    );
  }
}

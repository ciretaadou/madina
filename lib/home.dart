import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:odc_projet_ecommerce/Pages/HomePage.dart';
import 'package:odc_projet_ecommerce/panierShop.dart';
import 'package:flutter/cupertino.dart';

import 'details_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    var largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("E-commerce"),
        actions: [

          Container(
            padding: EdgeInsets.only(bottom: 0,top: 15),
            margin: EdgeInsets.only(bottom: 0),
            decoration: BoxDecoration(
              //color: Color(0xFF38A3A5),
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10),
               // boxShadow: [
                //  BoxShadow(
                //    color: Colors.white.withOpacity(0.5),
                //    blurRadius: 2,
                 // ),
                ///]
            ),
            child: Badge(
              badgeStyle: BadgeStyle(
                  badgeColor: Colors.blue,
                  padding: EdgeInsets.all(7)
              ),
              badgeContent: Text(
                "4",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => PanierShop()));
                },
                child: Icon(
                  CupertinoIcons.cart,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(width:10),
          IconButton( icon: Icon(Icons.category_sharp),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => HomePage()));
              }
          )
        ],
      ),
      body: ListView(
        children: [
          /// --- recent
          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recents", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
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
                            image: AssetImage("assets/v4.jpg"),
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
                            Text("Veste-Femme", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            SizedBox(height: 3),
                            Text("500.000 GNF", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
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
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => DetailsPage())),
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
          Container(
            height: 15,
            color: Colors.grey.shade400,
          ),
          /// --- chaussures
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Chaussures Basket", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              IconButton(
                onPressed: ()=>{},
                icon: Icon(Icons.arrow_forward
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              //SizedBox(width: 15,),
              Column(
                children: [
                  Container(
                    width: largeur/3.5,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("assets/c2.jpg"),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: largeur/3.5,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Basket Noir", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("180.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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

                  )
                ],
              ),
              //SizedBox(width: 10,),
              Column(
                children: [
                  Container(
                    width: largeur/3.5,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("assets/c1.jpg"),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: largeur/3.5,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Basket Adidas", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("200.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              //SizedBox(width: 10,),
              Column(
                children: [
                  Container(
                    width: largeur/3.5,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey,
                        image: DecorationImage(
                          image: AssetImage("assets/c4.jpg",),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: largeur/3.5,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Basket Puma", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("150.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
          Container(
            height: 15,
            color: Colors.grey.shade300,
          ),
          /// --- pantalon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Pantalon", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              IconButton(
                onPressed: ()=>{},
                icon: Icon(Icons.arrow_forward
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    width: largeur/3.5 ,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("assets/pa1.jpg"),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: largeur/3.5 ,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Jogging", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("150.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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

                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: largeur/3.5 ,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("assets/pa2.jpg"),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  Container(
                    width: largeur/3.5 ,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Jogging millitaire", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("100.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              Column(
                children: [
                  Container(
                    width: 130,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey,
                        image: DecorationImage(
                          image: AssetImage("assets/pa3.jpg",),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 130,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Jogging", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("130.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
          Container(
            height: 15,
            color: Colors.grey.shade300,
          ),


          /// --- pull
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Pull", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              IconButton(
                onPressed: ()=>{},
                icon: Icon(Icons.arrow_forward
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Column(
                children: [
                  Container(
                    width: largeur/3.5 ,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("assets/p1.jpg"),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: largeur/3.5 ,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Pullman", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("150.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              Column(
                children: [
                  Container(
                    width: largeur/3.5 ,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("assets/p2.jpg"),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: largeur/3.5 ,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Pull", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("100.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              Column(
                children: [
                  Container(
                    width: largeur/3.5 ,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey,
                        image: DecorationImage(
                          image: AssetImage("assets/p3.jpg",),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: largeur/3.5 ,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Pull-Woman", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("130.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
          Container(
            height: 15,
            color: Colors.grey.shade300,
          ),

          /// --- veste
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Veste", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              IconButton(
                onPressed: ()=>{},
                icon: Icon(Icons.arrow_forward
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 10,),
              Column(
                children: [
                  Container(
                    width: largeur/3.5 ,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("assets/v1.jpg"),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: largeur/3.5 ,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Veste-Homme", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("450.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              Column(
                children: [
                  Container(
                    width: largeur/3.5 ,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage("assets/v4.jpg"),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: largeur/3.5 ,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Veste-Femme", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("500.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              Column(
                children: [
                  Container(
                    width: largeur/3.5 ,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey,
                        image: DecorationImage(
                          image: AssetImage("assets/v5.jpg",),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: largeur/3.5 ,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Veste", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("530.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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

          Container(
            height: 15,
            color: Colors.grey.shade300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Toutes les publications", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              IconButton(
                onPressed: ()=>{},
                icon: Icon(Icons.arrow_forward
                ),
              )
            ],
          ),
          /// --- tout les publication
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => DetailsPage())),
                    child: Container(
                      width: largeur/3.5 ,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage("assets/v4.jpg"),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => DetailsPage())),
                    child: Container(
                      width: largeur/3.5 ,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Veste-Femme", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                          SizedBox(height: 3),
                          Text("500.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => DetailsPage())),
                    child: Container(
                      width: largeur/3.5 ,
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
                    width: largeur/3.5 ,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Basket Adidas", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("200.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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
              Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => DetailsPage())),
                    child: Container(
                      width: largeur/3.5 ,
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
                    width: 130,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Basket Puma", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3),
                        Text("150.000 GNF", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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



        ],
      )
    );
  }
}

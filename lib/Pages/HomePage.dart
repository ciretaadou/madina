import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/CategoriesWidget.dart';
import '../widgets/ItemsWidget.dart';
import '../widgets/PopularItemsWidget.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var largeur  = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor:  Color(0xFF38A3A5),
      backgroundColor:  Colors.brown,
      appBar: AppBar(
         title: Text("Categorie"),
        actions: [
          Container(
            padding: EdgeInsets.only(top: 15, right: 15),
            decoration: BoxDecoration(
              //color: Color(0xFF38A3A5),
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    blurRadius: 2,
                  ),
                ]
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
                onTap: (){},
                child: Icon(
                  CupertinoIcons.cart,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          )

        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Message de bienvenu
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bienvenue",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Qu'est ce que vous voulez Achéter?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              //codage de la vue recherche
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: largeur/2,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Recherher",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //le widget des produits
              Container(
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoriesWidget(),
                    PopularItemsWidget(),
                    ItemsWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
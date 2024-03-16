import 'dart:core';
import 'package:flutter/material.dart';
import 'package:madina/couleur_page.dart';
import 'package:madina/index/home_page.dart';
import 'package:madina/index/message_page.dart';
import 'package:madina/index/notification_page.dart';
import 'package:madina/index/panier.dart';
import 'package:madina/index/profil_page.dart';


class IndexMadina extends StatefulWidget {

  @override
  State<IndexMadina> createState() => _IndexLaureatState();

}

class _IndexLaureatState extends State<IndexMadina> {

  int currentTab = 0;

  /// la page active
  Widget currentScreen = HomePage();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Madina", style: TextStyle(fontSize: 35),),
        backgroundColor: col_pp,

        actions: [

          ///----- rechercher
          GestureDetector(
            onTap: () {

            },
            child: Icon(
              Icons.search, size: 40,
            ),
          ),

          ///----- panier
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      Panier(),
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
            child: Icon(
              Icons.shop, size: 40, color: Colors.white,
            ),
          ),

          ///----- parametre
          GestureDetector(
            onTap: () {

            },
            child: Icon(
              Icons.more_vert, size: 40,
            ),
          ),



        ],

      ),

      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),

        // color: Colors.transparent,
        child: Container(
          height: 75,

          /// l'arrondi du bottom
          margin: EdgeInsets.only(top: 1),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.only(

                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),

              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 2),
                )
              ]
          ),


          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [


              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = HomePage();
                    currentTab = 0;
                  });
                },
                child: Column(
                  children: [
                    new Icon(Icons.home,
                        color: currentTab == 0 ? Colors.blue : Colors
                            .grey),
                  ],
                ),

              ),

              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = MessagePage();
                    currentTab = 1;
                  });
                },

                child: Column(
                  children: [
                    new Icon(Icons.forum_outlined,
                        color: currentTab == 1 ? Colors.blue : Colors
                            .grey),
                  ],
                ),

              ),


              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = NotificationPage();
                    currentTab = 2;
                  });
                },
                child: Column(
                  children: [
                    new Icon(Icons.notification_add,
                        color: currentTab == 2 ? Colors.blue : Colors
                            .grey),
                  ],
                ),

              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = ProfilPage();
                    currentTab = 3;
                  });
                },
                child: Column(
                  children: [

                    new Icon(Icons.person,
                        color: currentTab == 3 ? Colors.blue : Colors
                            .grey),
                  ],
                ),

              ),


            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.

    );

  }
}






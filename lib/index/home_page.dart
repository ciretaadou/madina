import 'package:flutter/material.dart';
import 'package:madina/couleur_page.dart';
import 'package:madina/nouveau.dart';
import 'package:madina/vintage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body:  DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context , _){
          return [

          ];
        },
        body: Column(
          children: [
            Material(
              //color: theme.isDark ? Colors.black : Colors.blue,
              color: col_pp,
              child: TabBar(

                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicatorWeight: 3,
                indicatorColor: Colors.white,

                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Text("Toutes ")
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Text("Anciens")
                      ],
                    ),),

                ],
              ),
            ),
            Expanded(child: TabBarView(
              children: [
                /// --------------- les onglets
                Nouveau(),
                // Sondage(),
                Vintage()

              ],
            ))
          ],
        ),
      ),
    )
    );
  }
}

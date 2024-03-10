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
                    child: Column(
                      children: [
                        //new Icon(Icons.all_inclusive),
                        new Icon(Icons.new_releases),
                        new Text("Nouveau ")
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: [
                        //new Icon(Icons.stacked_bar_chart),
                        new Icon(Icons.nest_cam_wired_stand),
                        new Text("Vintage")
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

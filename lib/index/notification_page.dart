import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:madina/couleur_page.dart';
import 'package:madina/nouveau.dart';
import 'package:madina/vintage.dart';


class NotificationPage  extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}



class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


        body:  ListView(
          children: [
            SizedBox(height: 5),

            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage("images/iphone.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              title: Text("notification 1"),
              subtitle: Text("le text de notification pour la partie notification "),
            ),
            Container(height: 2, color: Colors.grey,),

            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage("images/iphone.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              title: Text("notification 1"),
              subtitle: Text("le text de notification pour la partie notification "),
            ),
            Container(height: 2, color: Colors.grey,),

            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage("images/iphone.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              title: Text("notification 1"),
              subtitle: Text("le text de notification pour la partie notification "),
            ),
            Container(height: 2, color: Colors.grey,),



          ],
        )
    );
  }
}

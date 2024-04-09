import 'package:flutter/material.dart';
import 'home_page.dart';

class DetailPublication extends StatefulWidget {
  const DetailPublication({super.key});

  @override
  State<DetailPublication> createState() => _DetailPublicationState();
}

class _DetailPublicationState extends State<DetailPublication> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'images/iphone.jpg',
                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                  ),
                   Container(
                     width:MediaQuery.of(context).size.width,
                     padding: EdgeInsets.only(top: 10.0),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(20.0),
                         topRight: Radius.circular(20.0),

                       ),
                       color: Colors.grey, // Set background color
                     ),
                     child:
                     Column(
                       children: [

                         Container(
                             width: MediaQuery.of(context).size.width,
                             height:  50,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[

                                 SizedBox(width: 10),
                                 _categorieImages("images/findo.jpg", Colors.grey),
                                 SizedBox(width: 10),
                                 _categorieImages("images/iphone.jpg", Colors.grey),
                                 SizedBox(width: 10),
                                 _categorieImages("images/findo.jpg", Colors.grey),
                                 SizedBox(width: 10),
                                 _categoriesImages("images/iphone.jpg", Colors.grey),

                               ],
                             )
                         ),


                         /// nom
                         Container(
                           margin: EdgeInsets.only(left: 2),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text("nom : " , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                               Text("Iphone 13"),
                             ],
                           ),
                         ),

                         /// categorie
                         Container(
                           margin: EdgeInsets.only(left: 2),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text("categorie : " , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                               Text("Telephone"),
                             ],
                           ),
                         ),

                         /// prix
                         Container(
                           margin: EdgeInsets.only(left: 2),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text("Prix : " , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                               Text("2.300.000"),
                             ],
                           ),
                         ),

                         /// nouveau ou vintage
                         Container(
                           margin: EdgeInsets.only(left: 2),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text("Arrivage : " , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                               Text("Vintage"),
                             ],
                           ),
                         ),

                         /// Description
                         Container(
                           margin: EdgeInsets.only(left: 2),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text("Description : " , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                               Text("This project is a starting point for a Flutter application.A few resources to get you started if this is your first Flutter project:Lab: Write your first Flutter appCookbook: Useful Flutter samplesFor help getting started with Flutter development, view the online documentation, which offers tutorials, samples, guidance on mobile development, and a full API reference."),
                             ],
                           ),
                         ),

                         /// numero whatsapp
                         Container(
                           margin: EdgeInsets.only(left: 2),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text("numero Whatsapp : " , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                               Container(
                                 alignment: Alignment.center,
                                 padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.all(Radius.circular(15)),
                                     color: Colors.blue),
                                 child: Text(
                                   "627463824",
                                   style: TextStyle(
                                       color: Colors.white, fontSize: 12),
                                 ),
                               )
                             ],
                           ),
                         ),




                       ],
                     ),
                   ),

                ],
              ),
              Positioned(
                top: 20,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios_new),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

    );


  }

  Widget _categorieImages(String images, Color textColor) {
    return  Container(
      height: 160,
      width: 60,
      //clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: AssetImage("${images}"),
              fit: BoxFit.cover
          )
      ),
    );
  }

  Widget _categoriesImages(String imagePath, Color backgroundColor) {
    return Stack(
      children: [
        // Image en fond avec bordure arrondie
        ClipRRect(
          borderRadius: BorderRadius.circular(5.0), // Adjust radius as needed
          child: Image.asset(
            imagePath,
            height: 160,
            width: 60,
            fit: BoxFit.cover,
          ),
        ),
        // Positionnement du nombre en haut à droite
        Positioned(
          child: Container(
            alignment: Alignment.center,
            height: 160,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white54, // Set background color here
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Text(
              '+2', // Remplacez par le nombre souhaité
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );

  }

}

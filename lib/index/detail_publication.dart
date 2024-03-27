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
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'images/iphone.jpg',
                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height:  50,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[

                            SizedBox(width: 10),
                            _categorieImages("images/findo.jpg", Colors.grey),
                            SizedBox(width: 10),
                            _categorieImages("images/iphone.jpg", Colors.grey),
                            SizedBox(width: 10),
                            _categorieImages("images/findo.jpg", Colors.grey),
                            SizedBox(width: 10),
                            _categorieImages("images/iphone.jpg", Colors.grey),
                            SizedBox(width: 10),
                            _categorieImages("images/findo.jpg", Colors.grey),
                            SizedBox(width: 10),
                            _categorieImages("images/iphone.jpg", Colors.grey),
                            SizedBox(width: 10),
                            _categorieImages("images/findo.jpg", Colors.grey),
                            SizedBox(width: 10),
                            _categorieImages("images/iphone.jpg", Colors.grey),

                          ],
                        )),
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
              Positioned(
                top: 20,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.red, width: 2)
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
      height: 150,
      width: 40,
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

}

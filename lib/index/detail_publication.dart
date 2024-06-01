import 'package:flutter/material.dart';
import '../couleur_page.dart';
import 'home_page.dart';

class DetailPublication extends StatefulWidget {
  const DetailPublication({super.key});

  @override
  State<DetailPublication> createState() => _DetailPublicationState();
}

class _DetailPublicationState extends State<DetailPublication> {
  int selectedImageIndex = 0;
  final List<String> imagePaths = [ // List of image paths
    "images/findo.jpg",
    "images/chaussure.jpg",
    "images/iphone.jpg",
    "images/chaussure.jpg",
    "images/iphone.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          getImagePath(selectedImageIndex), // Use getImagePath function
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    padding: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      // Set background color here
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 80, // Adjust height as needed
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: imagePaths.length, // Use imagePaths length
                            itemBuilder: (context, index) => Padding(
                              padding: EdgeInsets.only(right: 10),// Add spacing between images
                              child: InkWell(
                                onTap: () => setState(() => selectedImageIndex = index),
                                child: _categorieImages(imagePaths[index], Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,   
                          child: Stack(
                            children: [
                              // Nom
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  margin: EdgeInsets.only(left: 2),
                                  child: Text(
                                    "Appareil de géolocalisation d'engins roulants",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20 ,
                                    ),
                                  ),
                                ),
                              ),

                              // Prix
                              Positioned(
                                top: 10,
                                right: 20,
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.orangeAccent,
                                  ),
                                  child: Text(
                                    "2.300.000 FG",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    // Catégorie
                        Container(
                          margin: EdgeInsets.only(left: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Catégorie : ",
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 16  )),
                              Text("Appareil électronique"),
                            ],
                          ),
                        ),

                        // Nouveau ou vintage
                        Container(
                          margin: EdgeInsets.only(left: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Arrivage : ",
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text("Vintage"),
                            ],
                          ),
                        ),

                        // Description
                        Container(
                          margin: EdgeInsets.only(left: 2),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              Text("Description : ",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          Text("This project is a starting point for a Flutter application. A few resources to get you started if this is your first Flutter project Useful Flutter samplesFor help getting started with Flutter development, view the online documentation, which offers tutorials, samples, guidance on mobile development, and a full API reference."),
                            ],
                          ),
                        ),
                        // Numéro WhatsApp
                        Container(
                          margin: EdgeInsets.only(left: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Numéro WhatsApp : ",
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(15)),
                                  color: Colors.orangeAccent,
                                ),
                                child: Text(
                                  "627463824",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
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
    return Container(
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

  String getImagePath(int index) {
    switch (index) {
      case 0:
        return "images/findo.jpg";
      case 1:
        return "images/chaussure.jpg";
      case 2:
        return "images/iphone.jpg";
      case 3:
        return "images/chaussure.jpg";
      case 4:
        return "images/iphone.jpg";
    // Add cases for other images
      default:
        return "images/findo.jpg"; // Default image if index is out of range
    }
  }

}


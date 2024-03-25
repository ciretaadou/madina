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
      body:
      SingleChildScrollView(
        child: Stack(
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
                      ],
                    )),
              ),
                /* Container(
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                */
              ],
            ),
            Positioned(
              top: 20,
              left: 10,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
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

import 'package:flutter/material.dart';

class PanierShop extends StatefulWidget {
  const PanierShop({Key? key}) : super(key: key);

  @override
  State<PanierShop> createState() => _PanierShopState();
}

class Product {
  final String name;
  final String image;
  final double price;

  Product(this.name, this.image, this.price);
}

class _PanierShopState extends State<PanierShop>  {
  final List<Product> products = [
    Product('chaussure ', 'assets/c1.jpg', 150.000),
    Product('Pantalon', 'assets/pa2.jpg', 200.000),
    Product('Pantalon jogging', 'assets/pa5.jpg', 140.00),
    Product('Veste ', 'assets/v1.jpg', 290.000),
    Product('Vest', 'assets/v3.png', 900.000),
    Product('Veste', 'assets/v5.jpg', 120.00),
  ];

  @override
  Widget build(BuildContext context) {
    var largeur = MediaQuery.of(context).size.width;
    return Scaffold(

        backgroundColor: Colors.brown.shade50,
        appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Mon Panier'),
    ),
    body: ListView.builder(
    itemCount: products.length,
    itemBuilder: (BuildContext context, int index) {
    return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Column(
      children: [
        Container(
        height: 120.0,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
        BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
        ),
        ],
        ),
        child: Row(
        children: [
        SizedBox(width: 10.0),
        Container(

        width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              //image: AssetImage("assets/v5.jpg"),
              image: AssetImage(products[index].image),
              fit: BoxFit.cover,
            ),
          ),
        ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  products[index].name,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  '${products[index].price.toStringAsFixed(2)} GNF',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {
              // Ajouter le produit au panier
            },
          ),
          SizedBox(width: 10.0),
        ],
        ),
        ),
      ],
    ),
    );
    },
    ),
    );
  }
}


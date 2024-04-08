import 'dart:io';

import 'package:flutter/material.dart';
import 'package:madina/couleur_page.dart';
//import 'package:image_picker/image_picker.dart';


class AjoutPublication extends StatefulWidget {
  const AjoutPublication({Key? key}) : super(key: key);

  @override
  State<AjoutPublication> createState() => _AjoutPublicationState();
}

class _AjoutPublicationState extends State<AjoutPublication>  {


  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajout Publication"),
        backgroundColor: col_pp,
      ),
      body: Center(
        child: Text("Ajouter une publication"),
      ),
    );
  }*/

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController _txtControllerDesc = TextEditingController();
  TextEditingController chapitreController = TextEditingController();
  TextEditingController profController = TextEditingController();
  bool _loading = false;

  String? selectedClasse;
  String? selectedMatiere;
  String? selectedTraitement;




  /// image multiple

  List<File> imagesReponse = [];

  // final picker = ImagePicker();

  /*
  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
        imageQuality: 100, maxHeight: 1000, maxWidth: 1000);

    List<XFile> xfilePick = pickedFile;

    setState(
          () {
        if (xfilePick.isNotEmpty) {
          for (var i = 0; i < xfilePick.length; i++) {
            imagesReponse.add(File(xfilePick[i].path));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
  */


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ajout Publication"),
          backgroundColor: col_pp,
        ),
        body: ListView(
          children: [

            Form(
              key: formkey,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [

                    /// Nom
                    SizedBox(height: 10),
                    TextFormField(
                      controller: chapitreController,
                      validator: (val) => val!.isEmpty ? 'Nom invalide' : null,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Nom',
                        contentPadding: EdgeInsets.all(10),
                        suffixIcon: Icon(Icons.star, color: Colors.red, size: 10,),
                        prefixIcon: Icon(Icons.article, color: Colors.blue, size: 15,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        labelStyle: TextStyle(color: Colors.black), // Couleur du label
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black), // Bordure quand le champ n'est pas en focus
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: col_pp), // Bordure quand le champ est en focus
                        ),
                        errorStyle: TextStyle(color: Colors.red), // Couleur du texte d'erreur
                      ),
                    ),

                    /// categorie
                    SizedBox(height: 10),
                    DropdownButtonFormField<String>(
                      value: selectedClasse,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedClasse = newValue;
                        });
                      },
                      items: ['Telephone','Vêtement','Chaussure'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        labelText: 'Categorie',
                        contentPadding: EdgeInsets.all(10),
                        suffixIcon: Icon(Icons.expand_more, color: Colors.red, size: 10,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: col_pp),
                        ),
                        errorStyle: TextStyle(color: Colors.red),
                      ),
                      validator: (value) {
                        if (value == null || (value != 'terminal' && value != '11 em' && value != '12 em')) {
                          return 'Categorie invalide';
                        }
                        return null;
                      },
                    ),

                    /// prix
                    SizedBox(height: 10),
                    TextFormField(
                      controller: chapitreController,
                      validator: (val) => val!.isEmpty ? 'Prix invalide' : null,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Prix',
                        contentPadding: EdgeInsets.all(10),
                        suffixIcon: Icon(Icons.star, color: Colors.red, size: 10,),
                        prefixIcon: Icon(Icons.monetization_on, color: Colors.blue, size: 15,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        labelStyle: TextStyle(color: Colors.black), // Couleur du label
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black), // Bordure quand le champ n'est pas en focus
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: col_pp), // Bordure quand le champ est en focus
                        ),
                        errorStyle: TextStyle(color: Colors.red), // Couleur du texte d'erreur
                      ),
                    ),


                    /// Nouveau ou vintage
                    SizedBox(height: 10),
                    DropdownButtonFormField<String>(
                      value: selectedTraitement,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedTraitement = newValue;
                        });
                      },
                      items: ['Vintage', 'Nouveau'].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        labelText: 'Nouveau',
                        contentPadding: EdgeInsets.all(10),
                        suffixIcon: Icon(Icons.expand_more, color: Colors.red, size: 10,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: col_pp),
                        ),
                        errorStyle: TextStyle(color: Colors.red),
                      ),
                      validator: (value) {
                        if (value == null || (value != 'Vintage' && value != 'Nouveau')) {
                          return 'Champs Invalide';
                        }
                        return null;
                      },
                    ),


                    ///  numero whatsapp
                    SizedBox(height: 10),
                    TextFormField(
                      controller: profController,
                      validator: (val) => val!.isEmpty ? 'Numero invalide' : null,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Numero',
                        contentPadding: EdgeInsets.all(10),
                        suffixIcon: Icon(Icons.star, color: Colors.red, size: 10,),
                        prefixIcon: Icon(Icons.phone, color: Colors.blue, size: 15,),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        labelStyle: TextStyle(color: Colors.black), // Couleur du label
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black), // Bordure quand le champ n'est pas en focus
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: col_pp), // Bordure quand le champ est en focus
                        ),
                        errorStyle: TextStyle(color: Colors.red), // Couleur du texte d'erreur
                      ),
                    ),

                    /// description
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _txtControllerDesc,
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                      validator: (val) => val!.isEmpty ? "Description Whatsapp " : null,
                      decoration: InputDecoration(
                        hintText: "Donner La Description",
                        border: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.black38)),
                        labelStyle: TextStyle(color: Colors.black), // Couleur du label
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black), // Bordure quand le champ n'est pas en focus
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: col_pp), // Bordure quand le champ est en focus
                        ),
                        errorStyle: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// image multiple
            Container(

              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: col_pp, width: 3)
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: () {
                      //getImages();
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(color: col_pp, width: 3)
                      ),
                      child: Text("Selectionner des images de la publication" , style: TextStyle(color: col_pp),),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 18.0),
                    child: Text(
                      "Images Articles ",
                      textScaleFactor: 2,
                      style: TextStyle(color: Colors.green),
                    ),
                  ),

                  SizedBox(
                    child: imagesReponse.isEmpty
                        ? const Center(child: Text('Aucune image selectionner!!'))
                        : // Ajoutez cette partie pour afficher les images sélectionnées dans le GridView.builder
                    GridView.builder(
                      shrinkWrap: true, // Utilisez shrinkWrap pour éviter les erreurs d'affichage
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: imagesReponse.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.all(2.0),
                          width: 250.0,
                          height: 300,

                          child: Center(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.file(imagesReponse[index] , fit: BoxFit.cover,),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: IconButton(
                                    icon: Icon(Icons.cancel, color: Colors.red),
                                    onPressed: () {
                                      // Ajoutez ici la logique pour supprimer l'image sélectionnée
                                      setState(() {
                                        imagesReponse.removeAt(index);
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),


                  ),



                ],
              ),
            ),

            /// boutton publier
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 8
              ),
              child: TextButton(
                onPressed: (){

                },
                child: Text('Publier L\'article', style: TextStyle(color: Colors.white, fontSize: 18),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blue),
                  padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(vertical: 10)),
                ),
              ),
            )

          ],
        )


    );
  }



}

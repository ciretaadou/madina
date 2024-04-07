import 'package:flutter/material.dart';
import '../index/index.dart';
import 'inscription_page.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({Key? key}) : super(key: key);

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Titre "Madina"
                  Text(
                    "Madina",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 55,
                    ),
                  ),

                  // Espace
                  const SizedBox(height: 30),

                  // Titre "Connexion"
                  Text(
                    "Connexion",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),

                  // Espace
                  const SizedBox(height: 20),

                  // Champ utilisateur/email
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Nom d'utilisateur ou Email",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.orange),
                      ),

                    ),

                  ),

                  // Espace
                  const SizedBox(height: 20),

                  // Champ mot de passe
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Mot de passe",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                    ),
                  ),

                  // Espace
                  const SizedBox(height: 30),



                  // Bouton de connexion
                  Container(
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => IndexMadina()),
                        );
                      },
                      child: Text("Se connecter", style: TextStyle(fontSize: 18, color: Colors.white),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.orange),
                      ),
                    ),
                  ),

                  const SizedBox(height: 5),
                    // Lien vers la page d'inscription
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InscriptionPage()),
                      );
                    },
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Vous n'avez pas de compte?",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          " S'inscrire",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Espace
                  const SizedBox(height: 20),

                  // Boutons Google et Facebook
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {
                            // TODO: Gérer la connexion avec Google
                          },
                          child: Text("Se connecter avec Google"),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            foregroundColor: MaterialStateProperty.all(Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {
                            // TODO: Gérer la connexion avec Facebook
                          },
                          child: Text("Se connecter avec Facebook"),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            foregroundColor: MaterialStateProperty.all(Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Espace
                  const SizedBox(height: 20),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

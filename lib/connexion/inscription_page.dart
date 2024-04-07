import 'package:flutter/material.dart';
import '../connexion/connexion_page.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({Key? key}) : super(key: key);

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  bool accepteConditions = false;

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
                  const SizedBox(height: 20),

                  // Titre "Inscription"
                  Text(
                    "Inscription",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),

                  // Espace
                  const SizedBox(height: 20),

                  // Champ nom
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Nom",
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

                  // Champ prenom
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Prénom",
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

                  // Champ nom d'utilisateur
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Nom d'utilisateur",
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

                  // Champ email
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Adresse email",
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

                  // Champ numero de telephone
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Numéro de téléphone",
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

                  // Case à cocher pour les conditions
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: accepteConditions,
                        onChanged: (value) =>
                            setState(() => accepteConditions = value!),
                        activeColor: Colors.orange,
                      ),
                      Text(
                        "J'accepte les Conditions d'utilisation",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),

                  // Espace
                  const SizedBox(height: 20),

                  // Bouton inscription (désactivé si conditions non cochées)
                  Container(
                    width: 180,
                    child: ElevatedButton(
                      onPressed: accepteConditions ? () { Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ConnexionPage()),
                      );} : null,
                      // Désactivé si case non cochée
                      child: const Text("S'inscrire",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            accepteConditions ? Colors.orange : Colors.grey),
                      ),
                    ),
                  ),

                  // Espace
                  const SizedBox(height: 10),

                  // Lien vers la page de connexion
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Avez-vous un compte?",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(
                              context); // Retour à la page de connexion
                        },
                        child: Text(
                          "Se connecter",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DetailPublication extends StatefulWidget {
  const DetailPublication({super.key});

  @override
  State<DetailPublication> createState() => _DetailPublicationState();
}

class _DetailPublicationState extends State<DetailPublication> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("hello")
      )
    );
  }
}

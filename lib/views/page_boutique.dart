import 'package:flutter/material.dart';

class PageBoutique extends StatelessWidget {
  const PageBoutique({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page boutique"),
      ),
      body: Center(
        child: Text("Bienvenue dans la boutique !"),
      ),
    );
    
  }
}
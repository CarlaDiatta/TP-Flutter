import 'package:app2_dbe6_isep_2026/views/page_accueil.dart';
import 'package:app2_dbe6_isep_2026/views/page_boutique.dart';
import 'package:app2_dbe6_isep_2026/views/page_compteur.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MonApplication());
  
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //Désactiver la banière de debug
    debugShowCheckedModeBanner: false,
    //Route initiale (Page d'accueil/connexion)
    initialRoute: '/page-accueil',
    routes: {
      
      '/page-accueil': (context) => PageAccueil(),
      '/page-compteur': (context) => PageCompteur(),
      '/page-boutique': (context) => PageBoutique(),
    },
    onUnknownRoute: (settings) => MaterialPageRoute(
      builder: (context) => PageAccueil()),
      //Gestion des langues
      locale: Locale('fr', 'FR'),
      //Mode claire
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink, brightness: Brightness.light),
        useMaterial3: true,
        appBarTheme: AppBar(
          backgroundColor:Colors.pink,
          foregroundColor: Colors.white,
          centerTitle: true,
        )
      ),
      //Mode sombre
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple, brightness: Brightness.dark),
        useMaterial3: true,
        appBarTheme: AppBar(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          centerTitle: true,
        )
      ),
      //Thème choisi
      themeMode: ThemeMode.system,

      );
  }
}

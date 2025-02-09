import 'package:flutter/material.dart';

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              // HEADER Gmail Style
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(Icons.mail, color: Colors.red, size: 30),
                    SizedBox(width: 10),
                    Text(
                      "Gmail",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const Divider(),

              // MENU ITEMS
              Expanded(
                child: ListView(
                  children: [

                    _gmailTile(
                      icon: Icons.inbox,
                      title: "Principale",
                      selected: true,
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/page-accueil', (route) => false);
                      },
                    ),

                    _gmailTile(
                      icon: Icons.people,
                      title: "Réseaux sociaux",
                      badge: "1 nouveaux",
                      badgeColor: Colors.blue.shade200,
                    ),

                    _gmailTile(
                      icon: Icons.local_offer,
                      title: "Promotions",
                      badge: "20 nouveaux",
                      badgeColor: Colors.green.shade300,
                    ),

                    _gmailTile(
                      icon: Icons.notifications,
                      title: "Notifications",
                      badge: "12 nouveaux",
                      badgeColor: Colors.orange.shade200,
                    ),

                    const Divider(),

                    _gmailTile(
                      icon: Icons.star_border,
                      title: "Favoris",
                    ),

                    _gmailTile(
                      icon: Icons.access_time,
                      title: "En attente",
                    ),

                    _gmailTile(
                      icon: Icons.label_important_outline,
                      title: "Important",
                      badge: "1 nouveau",
                      badgeColor: Colors.blue.shade200,
                    ),

                    _gmailTile(
                      icon: Icons.shopping_cart,
                      title: "Boutique",
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/page-boutique', (route) => false);
                      },
                    ),

                    _gmailTile(
                      icon: Icons.countertops,
                      title: "Compteur",
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/page-compteur', (route) => false);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      appBar: AppBar(
        title: const Text("Page d'accueil"),
        actions: [
          const Icon(Icons.person),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page-boutique');
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),

      body: const Center(
        child: Text("Contenu de la page"),
      ),
    );
  }

  // WIDGET PERSONNALISÉ POUR STYLE GMAIL
  Widget _gmailTile({
    required IconData icon,
    required String title,
    bool selected = false,
    String? badge,
    Color? badgeColor,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: selected ? Colors.red : Colors.grey[700],
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: selected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      tileColor: selected ? Colors.red.withOpacity(0.1) : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      trailing: badge != null
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: badgeColor ?? Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                badge,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : null,
      onTap: onTap,
    );
  }
}
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/kontakt-tlo.png"),  // Ścieżka do wygenerowanego tła
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.7), Colors.black.withOpacity(0.3)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Dane Kontaktowe',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 20),
                  ContactInfo(
                    icon: Icons.location_on,
                    label: 'Adres',
                    info: 'ul. Przykładowa 123, 00-001 Miasto',
                  ),
                  ContactInfo(
                    icon: Icons.phone,
                    label: 'Telefon',
                    info: '+48 123 456 789',
                  ),
                  ContactInfo(
                    icon: Icons.email,
                    label: 'Email',
                    info: 'kontakt@przyklad.pl',
                  ),
                  ContactInfo(
                    icon: Icons.access_time,
                    label: 'Godziny otwarcia',
                    info: 'Pon-Pt: 9:00 - 18:00\nSob: 10:00 - 14:00',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String info;

  ContactInfo({required this.icon, required this.label, required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.white, size: 30),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                info,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zasoby'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/zasoby-tlo.png"),  // Ścieżka do wygenerowanego tła
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: <Widget>[
                ResourceItem(
                  title: 'Artykuł: Jak radzić sobie ze stresem',
                  description: 'Praktyczne porady i techniki, które pomogą Ci zredukować stres w codziennym życiu.',
                  link: 'https://www.przyklad.pl/artykul-o-stresie',
                ),
                ResourceItem(
                  title: 'Książka: Mindfulness dla każdego',
                  description: 'Książka wprowadzająca do praktyki mindfulness, która może pomóc w radzeniu sobie z trudnymi emocjami.',
                  link: 'https://www.przyklad.pl/mindfulness-ksiazka',
                ),
                ResourceItem(
                  title: 'Film: Jak poprawić zdrowie psychiczne',
                  description: 'Film dokumentalny, który przedstawia różne metody i strategie poprawy zdrowia psychicznego.',
                  link: 'https://www.przyklad.pl/film-o-zdrowiu-psychicznym',
                ),
                ResourceItem(
                  title: 'Podcast: Psychologia na co dzień',
                  description: 'Seria podcastów z psychologami, którzy dzielą się swoimi wiedzą i doświadczeniem na różne tematy.',
                  link: 'https://www.przyklad.pl/podcast-psychologia',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ResourceItem extends StatelessWidget {
  final String title;
  final String description;
  final String link;

  ResourceItem({required this.title, required this.description, required this.link});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                // Implement navigation to the link
                _launchURL(link);
              },
              child: Text(
                'Dowiedz się więcej',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    // You can use the url_launcher package to open the link
    // import 'package:url_launcher/url_launcher.dart';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
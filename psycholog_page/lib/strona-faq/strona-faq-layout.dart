import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/faq-tlo.png"),  // Ścieżka do wygenerowanego tła
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
          ListView(
            padding: const EdgeInsets.all(16.0),
            children: <Widget>[
              FAQItem(
                question: 'Jakie usługi oferuje psycholog?',
                answer: 'Psycholog oferuje szeroki zakres usług, w tym terapię indywidualną, terapię grupową, konsultacje psychologiczne oraz warsztaty rozwoju osobistego.',
              ),
              FAQItem(
                question: 'Jak umówić się na wizytę?',
                answer: 'Aby umówić się na wizytę, możesz skontaktować się z nami telefonicznie lub przez naszą stronę internetową, wypełniając formularz kontaktowy.',
              ),
              FAQItem(
                question: 'Czy terapia jest poufna?',
                answer: 'Tak, wszystkie sesje terapeutyczne są w pełni poufne. Dbamy o prywatność i bezpieczeństwo naszych klientów.',
              ),
              FAQItem(
                question: 'Jak długo trwa sesja terapeutyczna?',
                answer: 'Standardowa sesja terapeutyczna trwa około 50 minut. W przypadku terapii grupowej czas trwania może być dłuższy.',
              ),
              FAQItem(
                question: 'Jakie są koszty terapii?',
                answer: 'Koszty terapii różnią się w zależności od rodzaju usługi. Skontaktuj się z nami, aby uzyskać szczegółowe informacje na temat cen.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        question,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            answer,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }
}

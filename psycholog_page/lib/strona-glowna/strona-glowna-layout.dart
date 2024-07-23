


import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

int selectedIndex = 0;

class TemplateHomePage extends StatefulWidget {
  Widget? body;


  TemplateHomePage({this.body});

  @override
  _TemplateHomePageState createState() => _TemplateHomePageState();
}

class _TemplateHomePageState extends State<TemplateHomePage> {
  bool isExpanded = false;

  late bool isTheme = false;
  String? photoURL;

  @override
  void initState() {
    super.initState();
    setState(() {
      initialize();
    });
  }

  Future<void> initialize() async {
  
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Drawer(
        semanticLabel: 'Menu',
        backgroundColor: Colors.green[100],
        width: MediaQuery.of(context).size.width > 600 ? 200 : 75,
        child: NavigationRail(
          backgroundColor: Colors.green[200],
          extended: kIsWeb ? true : false,
          selectedIndex: selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            switch (index) {
              case 0:
               
                  otwierajTylkoRaz(context, '/');
                
                break;
              case 1:
                
                  otwierajTylkoRaz(context, '/uslugi');
               

                break;
              case 2:
              
                  otwierajTylkoRaz(context, '/zasoby');
                
                break;
                 case 3:
              
                  otwierajTylkoRaz(context, '/faq');
                
                break;

              case 4:
              otwierajTylkoRaz(context, '/kontakt');
              
                break;

              case 5:

                otwierajTylkoRaz(context, '/ustawienia');
                break;
              case 6:
               otwierajTylkoRaz(context, '/');
                break;
            }
          },
          destinations: [
            menuButton("O Nas", Icons.home),
            menuButton('Usługi', Icons.room_service),
           
            menuButton('Zasoby', Icons.library_books), 
            menuButton('FAQ', Icons.question_answer),
            menuButton('Kontakt', Icons.contact_mail),
           
            menuButton('Ustawienia', Icons.settings),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.green[100],
        elevation: 10,
        actions: [
          Spacer(),
          Image.asset('assets/images/logo.png', width: 192, height: 192),
          Spacer(),
          
        ],
      ),
      body: widget.body,

      // Main content
    );
  }
}

NavigationRailDestination menuButton(String text, IconData icon,
   ) {
 
  
    return NavigationRailDestination(
      icon: Icon(icon),
      label: kIsWeb ? Text(text) : SizedBox.shrink(),
    );
  
}

otwierajTylkoRaz(BuildContext context, String strona) {
  if (ModalRoute.of(context)?.settings.name != strona) {
    Navigator.pop(context);
    Navigator.pop(context);
    Navigator.pushNamed(context, strona);
  }
}

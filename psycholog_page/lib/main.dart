import 'package:flutter/material.dart';
import 'package:psycholog_page/strona-faq/strona-faq-layout.dart';
import 'package:psycholog_page/strona-glowna/strona-glowna-layout.dart';
import 'package:psycholog_page/strona-kontakt/strona-kontakt-layout.dart';
import 'package:psycholog_page/strona-powitalna/strona-powitalna-layout.dart';
import 'package:psycholog_page/strona-uslugi/strona-uslugi.dart';
import 'package:psycholog_page/strona-ustawienia/ustawienia-layout.dart';
import 'package:psycholog_page/strona-zasoby/strona-zasoby.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perspektywwa',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Betstrateg(),
    );
  }
}


class Betstrateg extends StatefulWidget {
  const Betstrateg({Key? key}) : super(key: key);

  @override
  _BetstrategState createState() => _BetstrategState();
}

class _BetstrategState extends State<Betstrateg> {
  final themeMode = ValueNotifier(ThemeMode.light);
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, g) {
        return MaterialApp(
            initialRoute: '/',
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (ctx) => TemplateHomePage(body: StronaPowitalna(),),
              '/uslugi': (ctx) => TemplateHomePage(body: ServicesPage(),),


                  '/zasoby': (ctx) => TemplateHomePage(body: ResourcesPage(),),

                            '/faq': (ctx) => TemplateHomePage(body: FAQPage(),),

                            '/kontakt': (ctx) => TemplateHomePage(body: ContactPage(),),



              '/ustawienia': (ctx) => TemplateHomePage(body: UstawieniaLayout(),),

             
            }

            //2'/welcome': (ctx) => TemplateHomePage(),

            /*
            '/complicated': (ctx) => ComplicatedImageDemo(),
            '/enlarge': (ctx) => EnlargeStrategyDemo(),
            '/manual': (ctx) => ManuallyControlledSlider(),
            '/noloop': (ctx) => NoonLoopingDemo(),
            '/vertical': (ctx) => VerticalSliderDemo(),
            '/fullscreen': (ctx) => FullscreenSliderDemo(),
            '/ondemand': (ctx) => OnDemandCarouselDemo(),
            '/indicator': (ctx) => CarouselWithIndicatorDemo(),
            '/prefetch': (ctx) => PrefetchImageDemo(),
            '/reason': (ctx) => CarouselChangeReasonDemo(),
            '/position': (ctx) => KeepPageviewPositionDemo(),
            '/multiple': (ctx) => MultipleItemDemo(),
            '/zoom': (ctx) => EnlargeStrategyZoomDemo(),
            */

            );
      },
      valueListenable: themeMode,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      title: "Cous Flutter",
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget movies(String name, String image, String movie) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          backgroundImage: NetworkImage(image),
          radius: 30,
          child: Text(
            image.isEmpty ? name[0].toUpperCase() : '',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        subtitle: Text(
          movie,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Circle Avatar",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(Icons.computer_sharp, color: Colors.black, size: 30),
        ],
      ),
      body: ListView(
        children: [
          movies(
              "Gasadel Papel",
              "https://fr.web.img6.acsta.net/pictures/22/01/18/10/13/5983633.jpg",
              "Un film de Kh"),
         Divider(height: 10,
          color: Colors.red,
          ),
          movies(
              "Dee grey",
              "https://resize2.prod.docfr.doc-media.fr/s/1200/ext/eac4ff34/content/2022/7/5/les-50-films-les-plus-sexy-879c300af67d91ee.jpeg",
              "Un film de Jean"),
          const Divider(height: 10, color: Colors.black),
          movies(
              "Roma",
              "https://www.cinetrafic.fr/images/affiches/big/aff_3822020190920060001.jpg",
              "Un film de Paul"),
          const Divider(height: 10, color: Colors.black),
          movies(
              "RollerBall",
              "https://www.france.tv/image/vignette_3x4/346/461/i/l/o/f1591cb3-phpzcjoli.jpg",
              "Un film de Mc"),
          const Divider(height: 10, color: Colors.black),
           movies(
              "Blanche comme neige",
              "https://www.france.tv/image/vignette_3x4/346/461/1/s/n/606ba75f-phpnzcns1.jpg",
              "Un film de Mari"),
         Divider(height: 10,
          color: Colors.red,
          ),
          movies(
              "La ressurrection",
              "https://s2.dmcdn.net/v/U8l0L1Y-2nQZlrBEr/x240",
              "Un film de Jean Paul"),
          const Divider(height: 10, color: Colors.black),
          movies(
              "Le choc des empires",
              "",
              "Le choc des empires,un film de Paul"),
          const Divider(height: 10, color: Colors.black),
          movies(
              "335",
              "https://fr.web.img5.acsta.net/c_310_420/pictures/21/11/26/11/51/2331900.jpg",
              "Un film d'Anne Mari"),
          const Divider(height: 10, color: Colors.black),
        ],
      ),
    );
  }
}

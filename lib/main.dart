import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Staggered Gridview",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(Icons.computer_sharp, color: Colors.black, size: 30),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: MasonryGridView.count(
          // Axis scrollDirection: Axis.vertical,
          // bool reverse: false,
          crossAxisCount: 5,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          itemCount: infos.length,
          itemBuilder: (BuildContext context, int index){
            return ShowInfo(
              verif: infos[index],
            );
          }
        )
      ),
      );
      // Center(pr
      //   child: Column(
      //     children: [
      //       Text("test"),
      //     ],
      //   ),
      // ),
  }
}

class Info {
  String images;
  String titles;
  String city;

  Info({required this.images, required this.city, required this.titles});
}

List<Info> infos = [
  Info(
    images:
        "https://www.propertieslamangaclub.com/perch/resources/gallery/11lasorquideasaticointerior02-w900.jpg",
    titles: "Appartement",
    city: "Saly Carrefour",
  ),
  Info(
    images:
        "https://www.propertieslamangaclub.com/perch/resources/gallery/11lasorquideasaticointerior02-w900.jpg",
    titles: "Appartement",
    city: "Saly Carrefour",
  ),
  Info(
    images:
        "https://www.propertieslamangaclub.com/perch/resources/gallery/11lasorquideasaticointerior02-w900.jpg",
    titles: "Appartement",
    city: "Saly Carrefour",
  ),
  Info(
    images:
        "https://www.propertieslamangaclub.com/perch/resources/gallery/11lasorquideasaticointerior02-w900.jpg",
    titles: "Appartement",
    city: "Saly Carrefour",
  ),
  Info(
    images:
        "https://www.propertieslamangaclub.com/perch/resources/gallery/11lasorquideasaticointerior02-w900.jpg",
    titles: "Appartement",
    city: "Saly Carrefour",
  ),
  Info(
    images:
        "https://www.propertieslamangaclub.com/perch/resources/gallery/11lasorquideasaticointerior02-w900.jpg",
    titles: "Appartement",
    city: "Saly Carrefour",
  ),
];

class ShowInfo extends StatelessWidget {
  final Info verif;

  const ShowInfo({Key? key, required this.verif}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(verif.images),
        ),
        Text(verif.city, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(verif.titles, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}


import 'package:flutter/material.dart';
//import 'package:flutter_rating/flutter_rating.dart';

//import 'package:flutter_rating/flutter_rating.dart';
//import 'package:flutter_rating_stars/flutter_rating_stars.dart';

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
  int maxstar=5;

  double rating1 = 1;
  double rating2 = 4;
  double rating3 = 2;
  double rating4 = 3;


Widget details(String image,String hotel,double rate, Color color){
  return Container(
    child: Column(
      children: [
        Container(
          child: Row(children: [
            Image.network(image, fit: BoxFit.fill, width: 340, height: 300)
          ],),
        ),
                Container(
          child: Row(children: [
            Text(hotel, style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15
            ),
            ),
            // StarRating(
            //   size: 10,
            //   color: color,
            //   borderColor: color,
            //   rating: rate,
            //   starCount: maxstar,
            //   onRatingChanged: (rate){

            //   },
            // )
          ],),
        ),
      ],
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
          "SingleChildScrollView 01",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        actions: [
          const Icon(Icons.computer_sharp, color: Colors.black, size: 30)
        ],
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            details("https://media-cdn.tripadvisor.com/media/photo-s/1c/9c/9a/a1/lamantin-beach-resort.jpg","Lamantin Beach",rating1, Colors.blue),
            details("https://media-cdn.tripadvisor.com/media/photo-s/0b/37/1c/17/piscine.jpg","Saly Hôtel",rating2, Colors.red),
            details("https://static.service-voyages.com/photos/vacances-senegal/dakar/piscine-framissima-palm-beach_513030_panobd.jpg","Faramissima Palm Beach",rating3, Colors.purple),
            details("https://www.worldwaterforum.org/sites/default/files/styles/large/public/2021-12/princess_1.jpg?itok=Xzk2FkGZ","Saly princess",rating4, Colors.orange),
          ],
        ),
      )
      //  Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('test'),
      //     ],
      //   ),
      // ),
    );
  }
}

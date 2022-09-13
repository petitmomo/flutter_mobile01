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
  String info = "";
  bool change = true;
  String a = "images/5.png";
  String b = "images/7.png";
  String c = "images/9.png";
  String d = "images/10.png";
  void onsubmit(String value){
    setState(() {
          info=value;
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "GestureDetector or inkwell",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        actions: [
          const Icon(Icons.computer_sharp, color: Colors.black, size: 30)
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Mouvement de la souris : $info',style: TextStyle(
                color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold
              ),
              ),
              Row(
                children: [
                  Image.asset(change?a:b, width: 170, height: 170),
                  Image.asset(change?c:d,width: 170, height: 170),

                ],
              ),
              GestureDetector(
                onDoubleTap: (){
                  if (change=true) {
                    change=true;
                    onsubmit("Deux cliques");
                  } else {
                    change=false;
                  }
                },
                onTap: (){
                  if (change=true) {
                     change=false;
                     onsubmit("Un clique");
                  } else {
                    change=true;
                  }
                },
                onLongPress: (){
                  onsubmit("Long clique");
                },
                onTapCancel: (){
                  onsubmit("Clique annaulé");
                },
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Container(
                    alignment: Alignment.center,
                     child: const Text("Validation", style: TextStyle(
                    color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,
                  )),
                  )
                 
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

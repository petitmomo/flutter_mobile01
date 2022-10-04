import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    var helloWorld;
        return Scaffold(
          appBar: AppBar(
            title: const Text("Internationalisation"),
            centerTitle: true,
          ),
          body: Center(
            child: Text("Bonjour"),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.blue,
              title: Text(
                "SingleChildScrollView",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              actions: [
                const Icon(Icons.computer_sharp, color: Colors.black, size: 30)
              ],
              bottom: TabBar(tabs: [
                Tab(
                    child: const Icon(Icons.filter_vintage,
                        color: Colors.red, size: 30)),
                Tab(
                    child: const Icon(Icons.phone_android,
                        color: Colors.red, size: 30)),
              ]),
            ),
            body: TabBarView(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                "https://www.indexsante.ca/chroniques/images/appartement-residence.jpg",
                                height: 300,
                                width: 300,
                              ),
                            ),
                            SizedBox(width: 50),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                "data:image/jpeg;base64,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",
                                height: 300,
                                width: 300,
                              ),
                            ),
                            SizedBox(width: 50),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsk2lauyfWb1xrNyHkMe-ie71SiiU7uCPJ4w&usqp=CAU",
                                height: 300,
                                width: 300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                              "data:image/jpeg;base64,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",
                              height: 300,
                              width: 300),
                        ),
                        SizedBox(height: 50),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                              "https://st.depositphotos.com/1000128/2642/i/450/depositphotos_26429241-stock-photo-desktop-computer-with-touchscreen-interface.jpg",
                              height: 300,
                              width: 300),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                              "https://c0.lestechnophiles.com/images.frandroid.com/wp-content/uploads/2022/01/asus-rog-strix-scar-15-2022-frandroid-2022.png?resize=300,300",
                              height: 300,
                              width: 300),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
            // Center(
            //   child: Column(
            //     children: [
            //       Text("test"),
            //     ],
            //   ),
            // ),
            ),
      ),
    );
  }
}

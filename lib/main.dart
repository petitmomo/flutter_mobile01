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
  int initialStep = 0;

  List<Step> steps = [
    Step(
      title: const Text("Confirmez votre prénom et Nom",
          style: TextStyle(color: Colors.blue, fontSize: 20)),
      content: const Text("Momodev"),
      isActive: true,
      subtitle: const Text("Etape: 1"),
    ),
    Step(
      title: const Text("Confirmez votre Adresse",
          style: TextStyle(color: Colors.yellow, fontSize: 20)),
      content: const Text("Saly Carrefour"),
      isActive: true,
      subtitle: const Text("Etape: 2"),
    ),
    Step(
      title: const Text("Confirmez votre numéro de téléphone",
          style: TextStyle(color: Colors.purple, fontSize: 20)),
      content: const Text("221 553 55 55"),
      isActive: true,
      subtitle: const Text("Etape: 3"),
    ),
    Step(
      title: const Text("Confirmez votre email",
          style: TextStyle(color: Colors.orange, fontSize: 20)),
      content: const Text("momodev@gmail.com"),
      isActive: true,
      subtitle: const Text("Etape: 4"),
    ),
    Step(
      title: const Text("Merci!",
          style: TextStyle(color: Colors.blue, fontSize: 20)),
      content: Image.network(
          "data:image/jpeg;base64,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",
          height: 250,
          width: 250),
      isActive: true,
      subtitle: const Text("FIN"),
      state: StepState.complete,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            "Stepper",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          actions: [
            const Icon(Icons.computer_sharp, color: Colors.black, size: 30)
          ],
        ),
        body: Stepper(
          currentStep: this.initialStep,
          steps: steps,
          type: StepperType.vertical,
          onStepTapped: (Step) {
            setState(() {
              initialStep = Step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (initialStep < steps.length - 1) {
                initialStep = initialStep + 1;
              } else {
                initialStep = 0;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if(initialStep > 0){
                initialStep = initialStep-1;
              }else{
                initialStep = 0;
              }
            });
          },
        )
        //  Center(
        //   child: Column(
        //     children: [
        //       Text("test"),
        //     ],
        //   ),
        // ),
        );
  }
}

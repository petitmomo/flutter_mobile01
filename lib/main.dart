import 'package:flutter/material.dart';
import 'screens/guest/auth.dart';
import 'screens/guest/password.dart';
import 'screens/guest/term.dart';


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
      home: AuthScreen(),
    );
  }
}

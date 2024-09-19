import 'package:flutter/material.dart';
import 'package:flutter_assignment/first_screen.dart';
import 'package:flutter_assignment/second_screen.dart';
import 'package:flutter_assignment/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Define a theme with a color scheme from a seed color (deep purple in this case).
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // Opt-in to Material 3 for updated designs.
      ),
      home:
          const FirstScreen(), // Set the FirstScreen as the initial screen of the app.
    );
  }
}

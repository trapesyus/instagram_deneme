import 'package:flutter/material.dart';

import 'package:instagram_deneme/screen/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

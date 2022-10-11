import 'package:flutter/material.dart';
import 'package:template/drinkView.dart';
import 'package:template/model.dart';
import 'searchView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
         backgroundColor: Color.fromARGB(243, 243, 243, 243)
        ),
      ),
      home: SearchView(),
    );
  }
}



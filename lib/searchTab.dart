import 'package:flutter/material.dart';
import '';

class searchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Material(
            elevation: 3,
            child: Container(
                height: 30,
                color: const Color.fromARGB(243, 243, 243, 243),
                child: const TextField( //Sätta denna inom en ROW för att lägga till icon framför?
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: "Search drink or ingredient"))),
          )
        ],
      ),
    );
  }
}

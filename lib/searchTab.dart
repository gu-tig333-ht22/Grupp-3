import 'package:flutter/material.dart';
import 'package:template/model.dart';
import 'package:template/widgets.dart';
import '';

class SearchTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          searchHeaderMenu(),
          drinkItemSmall(testlista[0]),
        ],
      ),
    );
  }


Widget searchHeaderMenu() {
  return Material(
            elevation: 3,
            child: Container(
                height: 30,
                color: const Color.fromARGB(243, 243, 243, 243),
                child: const TextField( //Sätta denna inom en ROW för att lägga till icon framför?
                    textAlign: TextAlign.center,
                    decoration: 
                        InputDecoration.collapsed(hintText: "Search drink or ingredient")
                        )),
          );
}
}

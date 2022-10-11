import 'package:flutter/material.dart';
import 'package:template/drinkView.dart';
import 'package:template/searchView.dart';
import 'model.dart';

Widget headerMenu(text) {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Material(
          elevation: 3,
          child: Container(
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
            height: 30,
            color: const Color.fromARGB(243, 243, 243, 243),
          ),
        ),
      ),
    ],
  );
}


Widget drinkItemSmall(Drink drink, context) {
  return 
      ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DrinkView()));
        },
        leading: Image.network(
            drink.image),
        title: Text(drink.name),
        subtitle: Text(drink.threeIngredients), //Om längre än 2 rader fixa ...
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined), constraints: BoxConstraints(), padding: EdgeInsets.all(0),),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shop),constraints: BoxConstraints()),
        ]),
      );
}

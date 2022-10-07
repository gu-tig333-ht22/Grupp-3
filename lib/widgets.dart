import 'package:flutter/material.dart';
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

Widget kort(Drink drink) {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(children: [
      ListTile(
        leading: Image.network(
            "https://www.thecocktaildb.com/images/media/drink/metwgh1606770327.jpg"),
        title: Text(drink.name),
        subtitle: Text(drink.threeIngredients), //Om längre än 2 rader fixa ...
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite), constraints: BoxConstraints(), padding: EdgeInsets.all(0),),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete),constraints: BoxConstraints()),
        ]),
      )
    ]),
  );
}

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
          Navigator.of(context).push(_createRoute());
        },
        leading: Image.network(
            drink.image),
        title: Text(drink.name),
        subtitle: Text(drink.threeIngredients), //Om längre än 2 rader fixa ...
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined), constraints: BoxConstraints(), padding: EdgeInsets.all(0),),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_shopping_cart),constraints: BoxConstraints()),
        ]),
      );

  
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const DrinkView(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

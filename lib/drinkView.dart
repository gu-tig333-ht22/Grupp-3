import 'package:flutter/material.dart';
import 'package:template/calculatorTab.dart';
import 'package:template/mydrinkstab.dart';

import 'model.dart';
import 'widgets.dart';

class DrinkView extends StatelessWidget {
  const DrinkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false, //ÄNDRA TILL FALSE
          toolbarHeight: 82,
          centerTitle: true,
          title: Column(
            children: [
              Container(
                height: 5,
              ),
              const Icon(
                Icons.local_bar,
                color: Color.fromARGB(255, 255, 143, 0),
                size: 50,
              ),
            ],
          )),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top:8, bottom: 8, left: 16, right: 16),
            child: Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Moscow Mule",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.cancel))
                  ]),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://www.thecocktaildb.com/images/media/drink/dms3io1504366318.jpg"),
              ),
            ),
          ),
        Container(
          margin: const EdgeInsets.all(5),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 205, 158, 158),
            borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               // VAD HAR VI GJORT?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Ingredients", style: TextStyle(fontWeight: FontWeight.bold),),
                  Container(child: Row(children: [
                    FloatingActionButton.small(
                      backgroundColor: Colors.white,
                      onPressed: () {}, child: Icon(Icons.favorite_border_outlined, color: Colors.black,)),
                    Container(width: 10,),
                    FloatingActionButton.small(
                      backgroundColor: Colors.white,
                      onPressed: () {}, child: Icon(Icons.add_shopping_cart, color: Colors.black))
                   ],),)
                ],
              ),
              Text("4 cl vodka",),
              Text("2 cl limejuice",),
              Text("10 cl sodavatten",),
              Container(height: 20,),
              Text("Directions", style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.")
              
            ],),
          )
        ]),
      ),
    );
  }
}

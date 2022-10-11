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
          toolbarHeight: 80,
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
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Moscow Mule"),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.cancel))
                ]),
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
          height: 300,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(20))),
          )
        ]),
      ),
    );
  }
}

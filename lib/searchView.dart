import 'package:flutter/material.dart';
import 'package:template/calculatorTab.dart';
import 'package:template/mydrinkstab.dart';

import 'model.dart';
import 'widgets.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 82,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            children: [
              Container(
                height: 5,
              ),
              const Icon(
                Icons.local_bar,
                color: Color.fromARGB(255, 255, 143, 0),
                size: 50,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Search by ingredients or drinks..."),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        actions: [_popMenu()],
      ),
      body: Center(
        child: Column(children: [drinkItemSmall(testlista[0], context)]),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(bottom:15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.calculate, size: 40)),
              Container(height: 50,child: VerticalDivider(thickness: 2,)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 40,
                    color: Color.fromARGB(255, 255, 143, 0),
                  )),
              Container(height: 50,child: VerticalDivider(thickness: 2,)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.local_bar,
                    size: 40,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _popMenu() {
    return PopupMenuButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
        onSelected: (value) {},
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              //BYT VÄRDEN!!!!!!!
              child: Text("All"),
              value: "all",
            ),
            PopupMenuItem(
              child: Text("Favourites"),
              value: "done",
            ),
            PopupMenuItem(
              child: Text("% Free"),
              value: "undone",
            ),
          ];
        });
  }
}

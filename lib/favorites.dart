import 'package:assignment1/models/myfavourit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  var currentPage = 1;
  var currentList = Myfavourit().p1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rooms list"),
        backgroundColor: Color.fromARGB(255, 194, 146, 5),
      ),
      body: Container(
        child: Column(children: [
          Container(
            height: 550,
            child: ListView.builder(
                itemCount: currentList.length,
                itemBuilder: (ctx, i) {
                  return Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(3),
                      height: 150,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: Color.fromARGB(255, 122, 122, 123))),
                      child: Column(children: [
                        ListTile(
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.keyboard_arrow_up)),
                          title: Text(
                            currentList[i].title.toString(),
                            style: TextStyle(
                                color: Color.fromARGB(255, 194, 146, 5),
                                fontSize: 25),
                          ),
                          leading: Image.asset(
                            currentList[i].url.toString(),
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Spacer(),
                        Text(
                          currentList[i].sutitle.toString(),
                          style: TextStyle(fontSize: 16),
                        )
                      ]));
                }),
          ),
          Spacer(),
          Divider(thickness: 1),
          Container(
            height: 80,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                currentPage > 1
                    ? ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Color.fromARGB(255, 194, 146, 5))),
                        onPressed: () {
                          if (currentPage != 0) {
                            setState(() {
                              currentPage--;
                              currentList =
                                  Myfavourit().getFavList(currentPage);
                            });
                          }
                        },
                        child: Text(
                          "Previous",
                        ))
                    : SizedBox(),
                if (currentPage < 3)
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => Color.fromARGB(255, 194, 146, 5))),
                      onPressed: () {
                        if (currentPage != 3) {
                          setState(() {
                            currentPage++;
                            currentList = Myfavourit().getFavList(currentPage);
                          });
                        }
                      },
                      child: Text(
                        "Next",
                      ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}

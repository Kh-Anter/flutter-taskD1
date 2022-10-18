import 'package:assignment1/favorites.dart';
import 'package:assignment1/models/myfavourit.dart';
import 'package:assignment1/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        actions: [
          Container(
              child: Row(children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => Favorites()));
                },
                icon: Icon(Icons.favorite)),
            PopupMenuButton(
              onSelected: (selected) {
                if (selected == "Setting") {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Setting()));
                }
              },
              itemBuilder: (context) {
                return {'Logout', 'Setting'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            )
          ]))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 102,
              backgroundImage: AssetImage("assets/images/profile.jpg"),
            ),
            Text(
              "Khaled anter",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Flutter developer",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text("create great project",
                style: TextStyle(fontSize: 15, color: Colors.white)),
            Text("@khaled"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.facebook_outlined)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.facebook_outlined)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.facebook_outlined))
              ],
            ),
            Divider(
              thickness: 1,
              indent: 40,
              endIndent: 40,
              color: Colors.white,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                    SizedBox(height: 10),
                    Text("10K",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text(
                      "Followers",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 198, 196, 196),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                    SizedBox(height: 10),
                    Text("10K",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text(
                      "Followers",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 198, 196, 196),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

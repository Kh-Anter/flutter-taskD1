import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  TextEditingController phone_ctl =
      new TextEditingController(text: "01155186187");
  TextEditingController email_ctl =
      new TextEditingController(text: "khaledanter0@gmail.com");
  TextEditingController password_ctl =
      new TextEditingController(text: "123123");
  bool email = true, password = true, phone = true;

  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    var screenWidth = _mediaQueryData.size.width;
    var screenHeight = _mediaQueryData.size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: AppBar(
          centerTitle: false,
          flexibleSpace: Container(
            margin: EdgeInsets.only(bottom: 10, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Account settings",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          titleSpacing: 0,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        width: screenWidth,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
              SizedBox(height: 5),
              Text(
                "Khaled anter",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),
              Container(
                  width: screenWidth,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Edit Profile",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        TextField(
                            controller: phone_ctl,
                            readOnly: phone,
                            decoration: InputDecoration(
                                label: Text("Phone number"),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        phone = !phone;
                                      });
                                    },
                                    icon: Icon(Icons.edit)))),
                        TextField(
                            controller: email_ctl,
                            readOnly: email,
                            decoration: InputDecoration(
                                label: Text("Email"),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        email = !email;
                                      });
                                    },
                                    icon: Icon(Icons.edit)))),
                        TextField(
                            controller: password_ctl,
                            readOnly: password,
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                label: Text("Password"),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        password = !password;
                                      });
                                    },
                                    icon: Icon(Icons.edit)))),
                      ])),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text("Logout",
                      style: TextStyle(
                          color: Color.fromARGB(255, 222, 2, 2),
                          fontSize: 18,
                          fontWeight: FontWeight.bold))),
              Divider(
                color: Colors.red,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

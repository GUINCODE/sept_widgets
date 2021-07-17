import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text("flutter app")),
          body: SingleChildScrollView(
            child: Column(
              children: [
                titleSection,
                // searchSection,
                SizedBox(height: 16),
                boxSection,
                SizedBox(height: 16),
                profilUser,
                rowSection
              ],
            ),
          )),
    );
  }
}

Widget rowSection = Container(
  color: Colors.grey,
  height: 100,
  padding: EdgeInsets.all(5),
  margin: EdgeInsets.all(10),
  child: Row(
    children: [
      Container(
        color: Colors.blue[300],
        height: 100,
        width: 100,
      ),
      Expanded(
          child: Container(
              color: Colors.amber[300],
              child:
                  Center(child: Text("data", style: TextStyle(fontSize: 26))))),
      Container(
        color: Colors.blue[300],
        height: 100,
        width: 100,
      ),
    ],
  ),
);
Widget titleSection = Container(
    decoration: BoxDecoration(
      // color: Colors.black26,
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
    // padding: EdgeInsets.all(4),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        "Home Page",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network(
          "https://media-exp3.licdn.com/dms/image/C4E03AQGD7FTqdUypcQ/profile-displayphoto-shrink_800_800/0/1548002617044?e=1631750400&v=beta&t=jATcB5F7Sm-uPFYNhcCPe7BZJZgtM7mj_1r66qkLOzI",
          height: 50,
          width: 50,
          // fit: BoxFit.fitWidth,
        ),
      ),
    ]));
Widget profilUser = Container(
  width: 200,
  child: Center(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(
          "https://scontent.fcdg1-1.fna.fbcdn.net/v/t1.6435-9/104813567_101083444994475_5722834426563721553_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=bPSLhPpN8vsAX_xpw6X&_nc_ht=scontent.fcdg1-1.fna&oh=b7aedc3c57c52fd85af0aa1271b47c53&oe=60F65240"),
    ),
  ),
);
Widget boxSection = Container(
  height: 160,
  width: double.infinity,
  margin: EdgeInsets.only(left: 20, right: 20),
  padding: EdgeInsets.all(20),

  decoration: BoxDecoration(
      // color: Colors.amber[300],
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.1,
            0.4,
            1.0,
          ],
          colors: [
            Colors.blue,
            Colors.amber,
            Colors.green,
          ])),
  // child: Text("data"),
);

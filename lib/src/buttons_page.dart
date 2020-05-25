import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math' as math;

class ButtonsPage extends StatelessWidget {
  final _selectedIndex = 0;
  final textStyleTitle = TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      decorationThickness: 12);
  final textStyleSubTitle = TextStyle(
    color: Colors.white,
    fontSize: 15,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            background(),
            Container(
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[titles(), buttons()],
              )),
            ),
            backButton(),
          ],
        ),
        bottomNavigationBar: buildBottomNavigationBar());
  }

  Padding backButton() {
    return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: BackButton(color: Colors.white,),
          );
  }

  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.red[500],
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.purple[800],
      onTap: null,
    );
  }

  Widget background() {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.red])),
        ),
        Positioned(
            top: -150,
            left: -150,
            child: Transform.rotate(
              angle: -math.pi / -5.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          colors: [Colors.purple, Colors.yellow])),
                ),
              ),
            )),
      ],
    );
  }

  Widget titles() {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 15, right: 15),
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("Classify Transaction", style: textStyleTitle),
          SizedBox(height: 10),
          Text("Classify this transaction into a particular category",
              style: textStyleSubTitle),
        ],
      ),
    );
  }

  Widget buttons() {
    return Table(children: [
      TableRow(children: [
        createButton(Icons.apps, Colors.blue, "General"),
        createButton(
            Icons.directions_transit, Colors.purpleAccent, "Transport"),
      ]),
      TableRow(children: [
        createButton(Icons.shopping_cart, Colors.pink, "Shopping"),
        createButton(Icons.payment, Colors.orange, "Bills"),
      ]),
      TableRow(children: [
        createButton(Icons.tag_faces, Colors.lightBlue, "Entertainment"),
        createButton(Icons.fastfood, Colors.green, "Grocery"),
      ]),
    ]);
  }

  Widget createButton(IconData icon, Color color, String text) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(height: 5.0),
                CircleAvatar(
                  backgroundColor: color,
                  radius: 35.0,
                  child: Icon(icon, color: Colors.white, size: 30.0),
                ),
                Text(text, style: TextStyle(color: color)),
                SizedBox(height: 5.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

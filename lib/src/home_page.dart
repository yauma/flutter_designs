import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final textStyleTitle = TextStyle(
      color: Colors.lightBlue, fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Designs Showcase"),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/basic');
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      child: Center(
                          child: Text("Basic Design", style: textStyleTitle))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/scroll');
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      child: Center(
                          child: Text("Scroll Design", style: textStyleTitle))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/buttons');
                  },
                  child: Container(
                      padding: EdgeInsets.all(15),
                      child: Center(
                          child:
                              Text("Buttons Design", style: textStyleTitle))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

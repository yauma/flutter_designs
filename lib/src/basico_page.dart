import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final textStyleTitle =
      TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold);
  final textStyleSubTitle = TextStyle(
    color: Colors.black45,
    fontSize: 15,
  );
  final textStyleCall = TextStyle(
    color: Colors.blue,
    fontSize: 15,
  );
  static const paddingValue = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image(
                    image: NetworkImage(
                        "https://holidaystoswitzerland.com/wp-content/uploads/2020/03/Lake-Oeschinensee-Switzerland-1.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: BackButton(color: Colors.white,),
                  ),
                ],
              ),
              createInfoContainer(),
              createCallContainer(),
              createDetailContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Padding createInfoContainer() {
    return Padding(
      padding: const EdgeInsets.all(paddingValue),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Lake Oeschinensee Switzerland",
                style: (textStyleTitle),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Kandersteg, Switzerland",
                textAlign: TextAlign.center,
                style: textStyleSubTitle,
              )
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.star,
            color: Colors.pinkAccent,
            size: 30.0,
          ),
          Text("41")
        ],
      ),
    );
  }

  Widget createCallContainer() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Container(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.call,
              color: Colors.blue,
              size: 30.0,
            ),
            Text("CALL", style: textStyleCall)
          ],
        ),
        Expanded(
          child: Container(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.place,
              color: Colors.blue,
              size: 30.0,
            ),
            Text("ROUTE", style: textStyleCall)
          ],
        ),
        Expanded(
          child: Container(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.share,
              color: Colors.blue,
              size: 30.0,
            ),
            Text("SHARE", style: textStyleCall)
          ],
        ),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }

  Widget createDetailContainer() {
    return Padding(
      padding: const EdgeInsets.all(paddingValue),
      child: Container(
        child: Text(
          "Oeschinen Lake (German: Oeschinensee) is a lake in the Bernese Oberland, Switzerland, 4 kilometres (2.5 mi) east of Kandersteg in the Oeschinen valley. At an elevation of 1,578 metres (5,177 ft), it has a surface area of 1.1147 square ",
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

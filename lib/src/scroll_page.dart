import 'package:flutter/material.dart';

class MyScrollPage extends StatefulWidget {
  @override
  _MyScrollPageState createState() => _MyScrollPageState();
}

class _MyScrollPageState extends State<MyScrollPage> {
  final textStyleTitle = TextStyle(
      color: Colors.white,
      fontSize: 50,
      fontWeight: FontWeight.bold,
      decorationThickness: 12);

  final textStyleButton = TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      decorationThickness: 12);

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          firstPage(),
          secondPage(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget firstPage() {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/images/original.png"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("11º", style: textStyleTitle),
                    SizedBox(height: 10),
                    Text("Friday", style: textStyleTitle),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white70,
                size: 100,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: BackButton(color: Colors.white,),
        ),
      ],
    );
  }

  Widget secondPage() {
    return Container(
      color: Colors.lightBlue,
      child: RaisedButton(
          highlightElevation: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
              child: Text('Welcome', style: textStyleButton),
            ),
          ),
          onPressed: (null)),
    );
  }
}

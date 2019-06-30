import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset("assets/img/home-banner.jpg"),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(16),
            child: Text(
              "Deals of the Day",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  height: 30,
                  child: Text("Hello $index"),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

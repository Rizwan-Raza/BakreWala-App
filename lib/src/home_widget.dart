import 'placeholder_widget.dart';
import 'package:flutter/material.dart';

import 'screens/example_screen.dart';
import 'screens/home_screen.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  MaterialColor colorCustom = MaterialColor(0xFF563D7C, {
    50: Color.fromRGBO(241, 238, 247, 1),
    100: Color.fromRGBO(201, 187, 221, 1),
    200: Color.fromRGBO(160, 135, 196, 1),
    300: Color.fromRGBO(132, 101, 179, 1),
    400: Color.fromRGBO(107, 76, 154, 1),
    500: Color.fromRGBO(86, 61, 124, 1),
    600: Color.fromRGBO(83, 59, 120, 1),
    700: Color.fromRGBO(71, 50, 103, 1),
    800: Color.fromRGBO(59, 42, 85, 1),
    900: Color.fromRGBO(48, 34, 68, 1),
  });

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    ExampleScreen(),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.purple),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bakre Wala',
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
        appBar: AppBar(
          title: Text(
            'Bakre Wala',
          ),
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xFFFFFFFF),
          type: BottomNavigationBarType.shifting,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: colorCustom,
                icon: Icon(Icons.home),
                title: Text("Home")),
            BottomNavigationBarItem(
                backgroundColor: colorCustom,
                icon: Icon(Icons.shopping_basket),
                title: Text("Order")),
            BottomNavigationBarItem(
                backgroundColor: colorCustom,
                icon: Icon(Icons.account_circle),
                title: Text("Profile")),
            BottomNavigationBarItem(
                backgroundColor: colorCustom,
                icon: Icon(Icons.more_horiz),
                title: Text("More")),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

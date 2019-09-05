import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../screens/search_page.dart';
import '../screens/home_page.dart';
import '../screens/howto.dart';
import '../screens/orders.dart';
import '../screens/profile.dart';

class Home extends StatefulWidget {
  static String routeName = '/homepage';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HowTo(),
    //CustomSearchBar(),
    SearchPage(),
    Orders(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFE1164B),
            icon: Icon(
              Icons.local_dining,
              size: 15,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFE1164B),
            icon: Icon(
              Icons.play_circle_filled,
              size: 15,
            ),
            title: Text(
              'How-To',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFE1164B),
            icon: Icon(Icons.search, size: 15),
            title: Text(
              'Search',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFE1164B),
            icon: Icon(Icons.shopping_cart, size: 15),
            title: Text(
              'Orders',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFE1164B),
            icon: Icon(
              Icons.account_circle,
              size: 15,
            ),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

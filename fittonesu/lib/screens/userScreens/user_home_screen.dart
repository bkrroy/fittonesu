import 'package:fittonesu/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserHomeScreen extends StatefulWidget {
  static const id = 'user_home_screen';

  @override
  _UserHomeScreenState createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Container(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 30,
              width: 30,
              child: ImageIcon(
                AssetImage('images/homeIcon.png'),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 30,
              width: 30,
              child: ImageIcon(
                AssetImage('images/instructorIcon.png'),
              ),
            ),
            label: 'Instructor',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              size: 30,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 30,
              width: 30,
              child: ImageIcon(
                AssetImage('images/sports.png'),
              ),
            ),
            label: 'sports',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 30,
              width: 30,
              child: ImageIcon(
                AssetImage('images/profile.png'),
              ),
            ),
            label: 'profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: kRedButtonColor,
        onTap: _onItemTapped,
      ),
      body: Container(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}

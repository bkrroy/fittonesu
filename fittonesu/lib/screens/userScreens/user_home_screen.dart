import 'package:fittonesu/constant.dart';
import 'package:fittonesu/screens/screenWidgets/friends_widget.dart';
import 'package:fittonesu/screens/screenWidgets/home_screen_widget.dart';
import 'package:fittonesu/screens/screenWidgets/insturctor_widget.dart';
import 'package:fittonesu/screens/screenWidgets/profile_widget.dart';
import 'package:fittonesu/screens/screenWidgets/sports_widget.dart';
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
    HomePageWidget(),
    InstructorWidget(),
    FriendsWidget(),
    SportsWidget(),
    ProfileWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xFF373856),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 30,
                  width: 30,
                  child: ImageIcon(
                    AssetImage('images/hutHomeIcon.png'),
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
                icon: ImageIcon(
                  AssetImage('images/friendsIcon.png'),
                ),
                label: 'Friends',
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
        ),
        body: Container(
          child: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ),
      ),
    );
  }
}

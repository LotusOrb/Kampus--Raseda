import 'package:flutter/material.dart';
import 'settingraseda.dart';
import 'Library/flutterbottomnav.dart';
import 'historyraseda.dart';
import 'rentalsepeda.dart';

class Homeraseda extends StatefulWidget {
  Homeraseda({Key key}) : super(key: key);

  @override
  _HomerasedaState createState() => _HomerasedaState();
}

class _HomerasedaState extends State<Homeraseda> {

  int _selectedIndex = 0;
  PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  void pageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    Widget buildPageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        Rentalsepeda(),
        Historyraseda(),
        Settingraseda(),
        //for switching page

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
          buildPageView(),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: BottomNavBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
          items: [
            BottomNavBarItem(
              icon: Icon(Icons.directions_bike),
              title: Text('Rental Sepda', style: TextStyle(fontSize: 12)),
              activeColor: Colors.blue,
            ),
            BottomNavBarItem(
                icon: Icon(Icons.history),
                title: Text('History'),
                activeColor: Colors.redAccent
            ),
            BottomNavBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                activeColor: Colors.teal
            ),
          ],
        ),
          )
             ],
           )
        ),
      
    );
  }
}
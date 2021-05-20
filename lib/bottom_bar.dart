import 'package:bottom_bar/screens/cart.dart';
import 'package:bottom_bar/screens/feeds.dart';
import 'package:bottom_bar/screens/home.dart';
import 'package:bottom_bar/screens/search.dart';
import 'package:bottom_bar/screens/user.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  static const routeName = '/BottomBarScreen';
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  // List _pages = [
  //   HomeScreen(),
  //   FeedsScreen(),
  //   SearchScreen(),
  //   CartScreen(),
  //   UserScreen(),
  // ];

  List<Map<String, Object>> _pages;
  int _selectedIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': HomeScreen(), 'title': 'Home Screen'},
      {'page': FeedsScreen(), 'title': 'Feeds screen'},
      {'page': SearchScreen(), 'title': 'Search Screen'},
      {'page': CartScreen(), 'title': 'CartScreen'},
      {'page': UserScreen(), 'title': 'UserScreen'}
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_pages[_selectedIndex]['title']),
      ),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 3,
        clipBehavior: Clip.antiAlias,
        // elevation: 5,
        shape: CircularNotchedRectangle(),
        child: Container(
          // height: kBottomNavigationBarHeight * 0.8,
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(width: 0.5),
          )),
          child: BottomNavigationBar(
            onTap: _selectedPage,
            backgroundColor: Theme.of(context).primaryColor,
            unselectedItemColor: Theme.of(context).textSelectionColor,
            selectedItemColor: Colors.purple,
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                tooltip: 'Home',
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.rss_feed),
                tooltip: 'Feeds',
                label: 'Feeds',
              ),
              BottomNavigationBarItem(
                activeIcon: null,
                icon: Icon(null), // Icon(
                //   Icons.search,
                //   color: Colors.transparent,
                // ),
                tooltip: 'Search',
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                tooltip: 'Cart',
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                tooltip: 'User',
                label: 'User',
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        tooltip: 'Search',
        elevation: 5,
        child: (Icon(Icons.search)),
        onPressed: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
      ),
    );
  }
}

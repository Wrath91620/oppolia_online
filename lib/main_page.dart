import 'package:flutter/material.dart';
import 'package:oppolia_online/bottom_nav_bar.dart';
import 'package:oppolia_online/drawer_page.dart';
import 'package:oppolia_online/home_page.dart';
import 'package:oppolia_online/order_page.dart';
import 'package:oppolia_online/user_page.dart';

class MainPage extends StatefulWidget {
  final Widget initialPage; // Accept the initial page

  MainPage(this.initialPage); // Constructor to accept initial page

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0; // Index for Bottom Navigation Bar
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // List of pages to display based on the selected index
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    UserPage(),
    OrderPage(),
  ];

  @override
  void initState() {
    super.initState();
    // Determine the index of the initial page
    _selectedIndex = _widgetOptions
        .indexWhere((w) => w.runtimeType == widget.initialPage.runtimeType);
  }

  // Handle bottom navigation bar item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.brown,
      ),
      body: _widgetOptions[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped, // Pass the onTap function
      ),
      drawer: DrawerPage(),
    );
  }
}

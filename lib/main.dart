import 'package:flutter/material.dart';
import 'package:oppolia_online/drawer_page.dart';
import 'package:oppolia_online/home_page.dart';
import 'package:oppolia_online/main_page.dart';
import 'package:oppolia_online/order_page.dart';
import 'package:oppolia_online/user_page.dart';
import 'bottom_nav_bar.dart'; // Make sure to import your BottomNavBar

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oppolia Online',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) =>
            MainPage(HomePage()), // Pass HomePage as initial page
        '/user': (context) =>
            MainPage(UserPage()), // Pass UserPage as initial page
        '/orders': (context) =>
            MainPage(OrderPage()), // Pass OrderPage as initial page
      },
    );
  }
}

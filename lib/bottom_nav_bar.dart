import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex; // Current selected index
  final Function(int) onTap; // Callback function for tap events

  BottomNavBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'User',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Orders',
        ),
      ],
      currentIndex: currentIndex, // Set the current index
      selectedItemColor: Colors.brown,
      unselectedItemColor: Colors.grey,
      onTap: onTap, // Call the passed function on tap
    );
  }
}

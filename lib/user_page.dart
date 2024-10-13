import 'package:flutter/material.dart';
import 'order_history_page.dart'; // Import your OrderHistoryPage
import 'wishlist_page.dart'; // Import your WishlistPage
import 'edit_profile_page.dart'; // Import your EditProfilePage

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildProfileSection(
              'Profile Picture', 'assets/images/profile_picture.png'),
          _buildProfileItem(context, 'Name', 'John Doe'),
          _buildProfileItem(context, 'Email', 'johndoe@example.com'),
          _buildProfileItem(context, 'Phone', '+1 234 567 890'),
          _buildProfileItem(context, 'Address', '123 Main St, City, Country'),
          _buildProfileItem(context, 'Orders', '5', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderHistoryPage()),
            );
          }),
          _buildProfileItem(context, 'Wishlist', '10', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WishlistPage()),
            );
          }),
          _buildEditProfileButton(context),
        ],
      ),
    );
  }

  Widget _buildProfileSection(String title, String imagePath) {
    return Column(
      children: [
        Text(title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildProfileItem(BuildContext context, String label, String value,
      [Function? onTap]) {
    return GestureDetector(
      onTap: onTap as void Function()? ?? () {}, // Call onTap if it's provided
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: TextStyle(fontSize: 18)),
            Text(value,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _buildEditProfileButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditProfilePage()),
          );
        },
        child: Text('Edit Profile'),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_recipes/screens/pages/1.dart';
import 'package:food_recipes/screens/pages/homepages/home.dart';
import 'package:food_recipes/screens/pages/saved_item.dart';
import 'package:food_recipes/screens/pages/notification.dart';
import 'package:food_recipes/screens/pages/upload_items.dart';
import 'package:food_recipes/screens/pages/user_profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const SavedItemsScreen(),
    const NotificationScreen(),
    const UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButton: SizedBox(
        height: 50,
        width: 50,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const UploadItemsScreen()));
            },
            backgroundColor: const Color(0xffE23E3E),
            child: const Icon(Icons.add),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.075,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: _selectedIndex == 0
                      ? Image.asset('assets/icons/homeActive.png')
                      : Image.asset('assets/icons/homeInactive.png'),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: _selectedIndex == 1
                      ? Image.asset('assets/icons/bookmarkActive.png')
                      : Image.asset('assets/icons/bookmarkInactive.png'),
                ),
                const SizedBox.shrink(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                  child: _selectedIndex == 2
                      ? Image.asset('assets/icons/notificationActive.png')
                      : Image.asset('assets/icons/notificationInactive.png'),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                  child: _selectedIndex == 3
                      ? Image.asset('assets/icons/userActive.png')
                      : Image.asset('assets/icons/userInactive.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

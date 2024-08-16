import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onIconTapped;

  const BottomNavBar({
    required this.selectedIndex,
    required this.onIconTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onIconTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            IconlyLight.home,
            color: selectedIndex == 0 ? Colors.blue : Colors.grey,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            IconlyLight.search,
            color: selectedIndex == 1 ? Colors.blue : Colors.grey,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            IconlyLight.chat,
            color: selectedIndex == 2 ? Colors.blue : Colors.grey,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            IconlyLight.profile,
            color: selectedIndex == 3 ? Colors.blue : Colors.grey,
          ),
          label: 'Profile',
        ),
      ],
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
    );
  }
}

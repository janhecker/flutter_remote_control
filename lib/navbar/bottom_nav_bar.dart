import 'package:flutter/material.dart';
import 'package:flutter_remote_control/main.dart';
import 'package:flutter_remote_control/navbar/widgets/custom_nav_bar_icon.dart';
import 'package:flutter_remote_control/navbar/menu_constants.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    List<BottomNavigationBarItem> _navBarItems = [
      BottomNavigationBarItem(
        icon: CustomNavBarIcon(Icons.home, 'Home', true),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: CustomNavBarIcon(Icons.settings, 'Settings', false),
        label: 'Settings',
      ),
    ];

    void _itemTapped(int newIndex) {
      if (_selectedIndex == newIndex) return;
      //print(_selectedIndex.toString() + ' to ' + newIndex.toString());
      pageController.jumpToPage(newIndex);
      for (var i = 0; i < _navBarItems.length; i++) {
        if (i == newIndex || i == _selectedIndex) {
          CustomNavBarIcon? navBarItem =
              _navBarItems[i].activeIcon as CustomNavBarIcon?;
          print('changed label: ' + navBarItem!.label);
          //todo navBarItem!.switchSelected;
          navBarItem.toggleColor();
        }
      }
      _selectedIndex = newIndex;
    }

    return BottomNavigationBar(
      showSelectedLabels: showSelectedMenuLabels,
      showUnselectedLabels: showUnselectedMenuLabels,
      items: _navBarItems,
      onTap: (value) => _itemTapped(value),
    );
  }
}

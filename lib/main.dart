import 'package:flutter/material.dart';
import 'package:flutter_remote_control/screens/home_screen.dart';
import 'package:flutter_remote_control/screens/settings_screen.dart';

import 'navbar/bottom_nav_bar.dart';

void main() => runApp(MaterialApp(home: RemoteControl()));

PageController pageController = PageController();

class RemoteControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: DisplayedScreen(),
    );
  }
}

class DisplayedScreen extends StatefulWidget {
  @override
  _DisplayedScreenState createState() => _DisplayedScreenState();
}

class _DisplayedScreenState extends State<DisplayedScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [HomeScreen(), SettingsScreen()];

    void _onPageChanged(int index) {
      setState(() {
        print('page changed (' + index.toString() + ')');
      });
    }

    pageController = PageController();

    return PageView(
      controller: pageController,
      children: _screens,
      onPageChanged: _onPageChanged,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}

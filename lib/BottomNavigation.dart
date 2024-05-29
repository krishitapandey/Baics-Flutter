import 'package:flutter/material.dart';
import 'package:bottomnavigation/BottomSheet.dart';
import 'package:bottomnavigation/Drawer.dart';
import 'package:bottomnavigation/animatedText.dart';
import 'package:bottomnavigation/Alert.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int SelectedIndex = 0;
  PageController _pageController = PageController();
  // final List<Widget> widget_option = [
  //   Text("home"),
  //   Text("Profile"),
  //   Text("Search"),
  //   Text("setting"),
  // ];

  void Tapped(int index) {
    setState(() {
      SelectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 215, 216, 217),
        body: PageView(
          controller: _pageController,
          children: [
            DropDownButton(),
            DropDownButton2(),
            DropDownButton3(),
            DropDownButton5()
          ],
        ),
        // body: Center(child: widget_option.elementAt(SelectedIndex)),

        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: 'Settings')
          ],
          currentIndex: SelectedIndex,
          onTap: Tapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
        ));
  }
}

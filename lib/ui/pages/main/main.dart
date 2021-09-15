import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:find_food_app/ui/pages/collect/collection.dart';
import 'package:find_food_app/ui/pages/home/home.dart';
import 'package:find_food_app/ui/pages/main/init_items.dart';
import 'package:find_food_app/ui/pages/profile/profile.dart';
 import 'package:flutter/material.dart';

class MyMainScreen extends StatefulWidget {
  static final String routeName = '/';
  const MyMainScreen({Key? key}) : super(key: key);

  @override
  _MyMainScreenState createState() => _MyMainScreenState();
}

class _MyMainScreenState extends State<MyMainScreen> {
  int _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: IndexedStack(
          index: _activeIndex,
          children: [
            MyHomeScreen(),
            MyCollectionScreen(),
            MyProfileScreen(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40,
        ),
        elevation: 0,
        highlightElevation: 0,
        onPressed: () {
          Navigator.of(context).pushNamed('/add-restaurant');
        },
          //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          itemCount: 3,
          tabBuilder: (index, isActive) {
            final Color color = _activeIndex == index ? Theme.of(context).primaryColor: Theme.of(context).unselectedWidgetColor;
            return Icon(
              iconList[index],
              color: color,
              size: 30,
            );
          },
          activeIndex: _activeIndex,
          height: 70,
          elevation: 10,
          gapLocation: GapLocation.end,
          onTap: (index) {
            setState(() {
              _activeIndex = index;
            });
          },
        ),
    );
    // return Scaffold(
    //   // body: IndexedStack(
    //   //   children: pages,
    //   // ),
    //   body: IndexedStack(
    //     index: _activeIndex,
    //     children: pages,
    //   ), //destination screen


    //);
  }
}

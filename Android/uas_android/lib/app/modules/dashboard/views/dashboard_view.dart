import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:uas2022/app/modules/collection/views/collection_view.dart';
import 'package:uas2022/app/modules/home/views/home_view.dart';
import 'package:uas2022/app/modules/search/views/search_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return SafeArea(
          child: Scaffold(
        body: Stack(children: [
          IndexedStack(
            index: controller.tabIndex,
            children: [HomeView(), SearchView(), CollectionView()],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple[800]),
                child: GNav(
                    backgroundColor: Colors.purple.shade800,
                    hoverColor: Colors.purple, // tab button hover color
                    tabBorderRadius: 10,
                    duration:
                        Duration(milliseconds: 300), // tab animation duration
                    gap: 8, // the tab button gap between icon and text
                    color: Colors.white, // unselected icon color
                    activeColor:
                        Colors.purple.shade800, // selected icon and text color
                    iconSize: 20, // tab button icon size
                    tabBackgroundColor: Colors.white,
                    onTabChange: controller.changeTabIndex,
                    selectedIndex: controller.tabIndex,
                    padding: EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5), // navigation bar padding
                    tabs: [
                      GButton(
                        // onTap: controller,
                        icon: Icons.home,

                        onPressed: () {
                          controller;
                        },
                        text: 'Home',
                      ),
                      GButton(
                        icon: CupertinoIcons.search,
                        onPressed: () {
                          controller;
                        },
                        text: 'Search',
                      ),
                      GButton(
                        icon: CupertinoIcons.collections_solid,
                        onPressed: () {
                          controller;
                        },
                        text: 'Collection',
                      )
                    ]),
              ),
            ),
          ),
        ]),
      ));
    });
  }
}

_bottomNavigationBarItem(IconData icon, String label) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}

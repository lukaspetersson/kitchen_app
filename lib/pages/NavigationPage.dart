import 'package:flutter/material.dart';

// Import bottom navigation pages
import 'package:kitchen_app/pages/navPages/nav1.dart';
import 'package:kitchen_app/pages/navPages/nav2.dart';

class PageInfo {
  PageInfo({required this.title, required this.icon, required this.page})
      : super();

  String title;
  Icon icon;
  Widget page;
}

class NavigationPage extends StatefulWidget {
  static List<PageInfo> pages = <PageInfo>[
    PageInfo(
        title: "nav1",
        icon: Icon(Icons.fingerprint),
        page: nav1(title: "nav1 title")),
    PageInfo(
        title: "nav2",
        icon: Icon(Icons.fingerprint),
        page: nav2(title: "nav2 title"))
  ];

  @override
  NavigationPageState createState() {
    return new NavigationPageState(pages: pages);
  }
}

class NavigationPageState extends State<NavigationPage> {
  NavigationPageState({required this.pages}) : super() {}

  // Pages
  List<PageInfo> pages;
  int selectedIndex = 0;
  onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(selectedIndex).page,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          for (PageInfo page in pages)
            BottomNavigationBarItem(
              icon: page.icon,
              label: page.title,
            )
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: onItemTapped,
      ),
    );
  }
}

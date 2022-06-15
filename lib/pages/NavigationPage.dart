import 'package:flutter/material.dart';

// Import bottom navigation pages
import 'package:kitchen_app/pages/navPages/nav1.dart';
import 'package:kitchen_app/pages/navPages/InventoryPage.dart';
import 'package:kitchen_app/pages/navPages/RecipePage.dart';
import 'package:kitchen_app/pages/navPages/ShoppingPage.dart';

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
        title: "Recipies", icon: Icon(Icons.fingerprint), page: RecipePage()),
    PageInfo(
        title: "Inventory",
        icon: Icon(Icons.fingerprint),
        page: ShoppingPage()),
    PageInfo(
        title: "Shopping",
        icon: Icon(Icons.fingerprint),
        page: InventoryPage()),
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

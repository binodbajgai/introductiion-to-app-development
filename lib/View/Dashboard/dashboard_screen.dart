import 'package:classproject/View/Authentication/regestration.dart';
import 'package:classproject/View/Dashboard/profile_screen.dart';
import 'package:classproject/instagram_homepage.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    PageController controller = PageController();
    return Scaffold(
      //appbar: AppBar(),
      body: PageView(
        onPageChanged: (index) {

        },
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          RegistrationScreen(),
          instagram_homepage(),
          Container(
            color: Colors.grey,
            height: 800,
            width: double.infinity,
            child: Text("1"),
          ),//RegistrationScreen(),


          ProfileScreen(),




        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap:(index) {
          setState(() {
            selectedIndex = index;
            controller.jumpToPage(index);

          });
          },
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        selectedIconTheme: IconThemeData(color: Colors.black),
        showUnselectedLabels: false,
        showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search"
            ),BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: "Notifications"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"
            ),




          ]
    ),
    );
  }
}

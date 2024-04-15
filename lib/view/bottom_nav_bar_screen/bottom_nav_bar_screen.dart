import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/view/home_page/home_page.dart';
import 'package:instagram_clone_application/view/search_screen/search_screen.dart';
import 'package:instagram_clone_application/view/select_account_screen/select_account_screen.dart';
import 'package:instagram_clone_application/view/profile_screen/profile_screen.dart';



class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {

  List<Widget> screenList = [
    HomePage(),
    SearchScreen(),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.blue,
    ),
    
    ProfileScreen()
  ];

  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: screenList[selectedIndex],
      bottomNavigationBar: 
      BottomNavigationBar(
          selectedItemColor:
           ColorConstants.primaryblack,
          onTap: (value) 
           {
            if (value != 2) {
              selectedIndex = value;
              setState(() {});
            } 
            else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectAccountScreen()
                  ));
            }
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
         // currentIndex: selectedIndex,
          items: [
            const BottomNavigationBarItem(
                activeIcon: Icon(Icons.home, size: 35),
                icon: Icon(Icons.home_outlined, size: 35),
                label: ""),

            const BottomNavigationBarItem(
              activeIcon: Icon(Icons.search,size: 35, opticalSize: 10),
              icon: Icon(Icons.search,size: 30),
               label: ""),

            // center bottm nav  button
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.add_box_rounded,size: 35, opticalSize: 10),
              icon: Icon(Icons.add_box_outlined,size: 35),
                label: ""),


             BottomNavigationBarItem(
                activeIcon: Icon(Icons.favorite_outlined,size:30),
                icon: Icon(Icons.favorite_border,size: 30),
                label: ""),

            BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  backgroundColor: ColorConstants.primaryblack,
                  radius: 18,
                  child: CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    ),
                  ),
                
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  radius: 15,
                ),
                
                label: ""),
          ],

          currentIndex: selectedIndex),
      

   );
  }
}
import 'package:flutter/material.dart';
import 'package:instagram_clone_application/core/constants/color_constants.dart';
import 'package:instagram_clone_application/core/constants/image_constants.dart';
import 'package:instagram_clone_application/view/home_page/home_page.dart';
import 'package:instagram_clone_application/view/select_account_screen/select_account_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedindex = 0;
  List navigationList = [
    HomePage(),
    Text("hi"),
    Text("bvjgbk"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationList.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (value) {
            if (value != 2) {
              selectedindex = value;
            }
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstant.primaryblack,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectAccountScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all()),
                    child: Icon(Icons.add),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: AssetImage(ImageConstant.profilepic),
                  radius: 15,
                ),
                label: ''),
          ]),
    );
  }
}
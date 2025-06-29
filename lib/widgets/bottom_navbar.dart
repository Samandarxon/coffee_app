import 'package:coffee_app/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedPagesindex = 0;
  List pages = [
    HomeScreen(),
    Center(child: Text("Favorite screen")),
    Center(child: Text("Cart screen")),
    Center(child: Text("Natification screen")),
    Center(child: Text("Natification screen")),
    Center(child: Text("Profile screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPagesindex],
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.3),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: selectedPagesindex,
            onTap: (value) {
              setState(() {
                selectedPagesindex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Home.svg"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Heart.svg"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Bag.svg"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Notification Nav.svg"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/icons/Profile.svg"),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

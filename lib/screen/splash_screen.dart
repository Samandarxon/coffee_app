import 'package:coffee_app/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECE0D1),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(height: 31),
            Image.asset("assets/images/cofe.png"),
            const SizedBox(height: 88),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 38),
              child: const Column(
                children: [
                  Text(
                    "Stay Focused",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Get the cup filled of your choice to stay focused and awake. Diffrent type of coffee menu, hot lottee cappucino",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff967259),
                fixedSize: Size(163, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(100),
                ),
                elevation: 10,

                shadowColor: Color(0xff967259),
              ),
              onPressed: () {
                setState(() {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) => BottomNavbar()),
                  // );
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BottomNavbar()),
                  );

                  print("Click");
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dive In",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 13),
                  SvgPicture.asset("assets/icons/right.svg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

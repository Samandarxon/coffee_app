import 'package:coffee_app/screen/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List category = ["Espresso", "Latte", "Cappuccino", "Cafetière"];
  List images = ["assets/images/5.png", "assets/images/6.png"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsetsGeometry.only(
              left: 23,
              right: 23,
              top: 66,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/Frame.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/Ellipse.png"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: Text(
                      "Find the best\nCoffee to your taste",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 268,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 18,
                            ),
                            // label: Text("Find your coffee...",),
                            hintText: "Find your coffee...",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 11),
                      GestureDetector(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff967259),
                          ),
                          child: Image.asset("assets/images/Filter.png"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 278,
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 35,
                          child: ListView.builder(
                            itemCount: category.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 30),
                                  child: Column(
                                    children: [
                                      Text(
                                        category[index],
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: index == selectedIndex
                                              ? Color(0xff967259)
                                              : Color(0xff444444),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Container(
                                        width: 10,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            100,
                                          ),
                                          color: index == selectedIndex
                                              ? Color(0xff967259)
                                              : Colors.transparent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 14),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 220,
                          child: ListView.builder(
                            itemCount: images.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => DetailsScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    left: 10,
                                    // right: 10,
                                  ),
                                  margin: EdgeInsets.only(right: 9),
                                  width: 160,
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromARGB(10, 0, 0, 0),
                                        blurRadius: 24,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                            images[index],
                                            width: 140,
                                            height: 123,
                                          ),
                                          Positioned(
                                            right: 0,
                                            top: 0,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadiusGeometry.only(
                                                    bottomLeft: Radius.circular(
                                                      25,
                                                    ),
                                                    topRight: Radius.circular(
                                                      25,
                                                    ),
                                                  ),
                                              child: Container(
                                                width: 73,
                                                height: 26,
                                                color: Colors.black.withValues(
                                                  alpha: 0.7,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SvgPicture.asset(
                                                      "assets/icons/Star.svg",
                                                      width: 18,
                                                      height: 18,
                                                    ),
                                                    const SizedBox(width: 5),
                                                    Text(
                                                      "4.5",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: 10,
                                              top: 15,
                                            ),
                                            width: 73,
                                            height: 63,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Espresso",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "\$",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xff967259,
                                                        ),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      "4.20",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.only(
                                                left: 15,
                                                top: 33,
                                              ),
                                              width: 52,
                                              height: 52,
                                              decoration: BoxDecoration(
                                                color: Color(0xff967259),
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(25),
                                                  bottomRight: Radius.circular(
                                                    25,
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w300,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Special for you",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                    width: MediaQuery.of(context).size.width,
                    height: 145,
                    decoration: BoxDecoration(
                      color: Color(0xff967259),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 30),
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Image.asset(
                            "assets/images/Rectangle.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 103,
                            child: Column(
                              children: [
                                const Text(
                                  "Specially mixed and brewed whivh you must try!",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    const Text(
                                      "\$11.00",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "\$20.3",
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: Colors.white
                                            .withValues(alpha: 0.4),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white.withValues(
                                          alpha: 0.4,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

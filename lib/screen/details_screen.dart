import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
List tip = [
"White Chocolate",
"Milk Chocolate",
"Dark Chocolate",
];

int selectedtipIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(13, 40, 13, 25),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          image: AssetImage("assets/images/Rectangle 24.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 11,
                              right: 11,
                              top: 22,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: SvgPicture.asset(
                                      "assets/icons/Arrow---Left-2.svg",
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    icon: Icon(Icons.favorite_border, size: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(27, 25, 27, 18),
                            width: MediaQuery.of(context).size.width,
                            height: 123,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.black.withValues(alpha: 0.3),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Espresso",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "with chocolate",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white.withValues(
                                          alpha: 0.8,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/icons/Star.svg"),
                                        const SizedBox(width: 5),
                                        Text("4.8",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400)),
                                        const SizedBox(width: 5), 
                                        Text("(6,098)",style: TextStyle(color: Color(0xffFFFFFF,).withValues(alpha: .6),fontSize: 10,fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                      Column( 
                                        children: [ 
                                          SvgPicture.asset("assets/icons/Group.svg"),
                                          const SizedBox(height: 10,),
                                          const Text("Coffee", style: TextStyle(color: Color(0xffDDDDDD), fontSize: 12, fontWeight: FontWeight.w400))
                                        ],
                                      ),
                                      const SizedBox(width: 30,),
                                      Column( 
                                        children: [ 
                                          SvgPicture.asset("assets/icons/Vector.svg"),
                                          const SizedBox(height: 10,),
                                          const Text("Chocolate", style: TextStyle(color: Color(0xffDDDDDD), fontSize: 12, fontWeight: FontWeight.w400))
                                        ],
                                      ),

                                    ],
                                    ),
                                    const SizedBox(height: 5,), 
                                    Text("Midium Roasted",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 3,),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text("Description",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),
                    const SizedBox(height: 15,),
                    const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel tincidunt et ullamcorper eu, vivamus semper commodo",
                          style: TextStyle(height: 1.83,fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff444444)),),
                    const SizedBox(height: 25,),
                    const Align(alignment: Alignment.topLeft, child: Text("Choice of Chocolate",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold))),
                    const SizedBox(height: 15,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 32,
                      child: ListView.builder(
                        itemCount: tip.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedtipIndex=index; 
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(right: 15),
                            width: 125,
                            height: 32,
                            decoration: BoxDecoration(
                              color: index==selectedtipIndex?Color(0xff967259):Colors.transparent,
                              border: Border.all(width: 1, color: Color(0xff967259)),
                              borderRadius: BorderRadius.circular(100)
                            ),
                            child: Text(tip[index],style: TextStyle(color : index==selectedtipIndex?Colors.white:Color(0xff777777),fontSize: 12,fontWeight: FontWeight.w500),),
                          ),
                        );
                      },),
                    ),
                    const SizedBox(height: 25,),
                    const Text("Quantity",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

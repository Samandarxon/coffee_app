import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,left: 23,right: 23),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon:SvgPicture.asset("assets/icons/Arrow---Left.svg")),
                IconButton(onPressed: (){}, icon: Icon(Icons.access_alarm_rounded)),
                // icon: SvgPicture.asset("assets/icons/Home.svg"),
                IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/Delete.svg"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
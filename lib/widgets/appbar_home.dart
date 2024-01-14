import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final VoidCallback notificationClick;
  final VoidCallback searchClick;
  const HomeAppBar({super.key, required this.searchClick, required this.notificationClick });


  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double parentWidth = MediaQuery.of(context).size.width;
    double parentHeight = MediaQuery.of(context).size.height;
    return Container(
      //appbar
      width: screenWidth,
      height: 80,
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey.withOpacity(0.1),
      //       spreadRadius: 5,
      //       blurRadius: 10,
      //       offset: Offset(0, 3), // changes position of shadow
      //     ),
      //   ],
      // ),
      // margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 15),
            child: CircleAvatar(
              backgroundImage:
              AssetImage("assets/images/kaium-al-limon.jpg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome, Limon \u{1F44B}",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset('assets/images/location.png'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        'San Fransisco, USA',
                        style: TextStyle(
                            fontFamily: 'Poppins', color: Colors.grey),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 50,right: 5),
            child: GestureDetector(
              onTap: searchClick,
              child: SizedBox(
                  height: 35,
                  width: 35,
                  child: Image.asset('assets/images/search.png',scale: 1.2,)
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 5,right: 10),
            child: GestureDetector(
              onTap: notificationClick,
              child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset('assets/images/notification (1).png',scale: 1.2,)
              ),
            ),
          )
        ],
      ),
    );
  }
}

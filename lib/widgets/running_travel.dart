import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RunningTravelCard extends StatelessWidget {
  final double width;
  final double height;

  const RunningTravelCard({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double parentWidth = MediaQuery.of(context).size.width;
    double parentHeight = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0xFFEDF0FA),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        children: [

          Container(
            width: width*.3,
            height: height,
            // color: Colors.red,
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/mountain_hd.jpg',
                    fit: BoxFit.cover,
                    width: width*.3,
                    height: height,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.teal
                    ),
                    height: 25,
                    width: 60,
                    margin: EdgeInsets.only(left: 15,top: 10,),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.clock_fill,color: Colors.white,size: 18,),
                        SizedBox(width: 5,),
                        Text('4d',style: TextStyle(fontFamily: 'Poppins',fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)
                      ],
                    ),
                  ),

                ],
              )
            ),
          ),

          Container(
            width: width*.50,
            height: height,
            // color: Colors.red,
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Serene\nShores",style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Icon(CupertinoIcons.group_solid,color: Colors.grey,size: 20,),
                        SizedBox(width: 8,),
                        Text('HTO Team',style: TextStyle(fontFamily: 'Poppins',color: Colors.grey),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(CupertinoIcons.location_circle_fill,color: Colors.grey,size: 16,),
                    Text("Switzerland ...",style: TextStyle(fontFamily: 'Poppins',color: Colors.grey),),
                    Row(
                      children: [
                        Icon(CupertinoIcons.location_fill,color: Colors.grey,size: 20,),
                        SizedBox(width: 5,),
                        Text('Albania',style: TextStyle(fontFamily: 'Poppins',color: Colors.blue,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: width*.25,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        color: Colors.blueAccent
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text('70%',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: Colors.blueAccent),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

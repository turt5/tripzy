import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripzy/widgets/appbar_home.dart';
import 'package:tripzy/widgets/recomendation_cards.dart';
import 'package:tripzy/widgets/running_travel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  void searchClicked() {
    print('Search clicked');
  }

  void notificationClicked() {
    print('Notification clicked');
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double parentWidth = MediaQuery.of(context).size.width;
    double parentHeight = MediaQuery.of(context).size.height;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Set your desired color here
      statusBarIconBrightness:
          Brightness.dark, // Change the status bar icons color
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //appbar
              HomeAppBar(
                  searchClick: searchClicked,
                  notificationClick: notificationClicked),

              // Add some padding or spacing after the app bar
              SizedBox(
                height: 10,
              ),
              //running travel text
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Running Travel',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              // SizedBox(height: 10),

              // Running travel cards
              RunningTravelCard(
                width: screenWidth,
                height: 150,
              ),
              const SizedBox(height: 10),

              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommendation',
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RecommendationCard(
                        text: 'Lakes', imagePath: 'assets/images/lake.png'),
                    RecommendationCard(
                        text: 'Jungles', imagePath: 'assets/images/jungle.png'),
                    RecommendationCard(
                        text: 'Mountain',
                        imagePath: 'assets/images/mountain.png'),
                    RecommendationCard(
                        text: 'Sea', imagePath: 'assets/images/beach.png'),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // RunningTravelCard(width: screenWidth-100,height: 150,),
                    // RunningTravelCard(width: screenWidth-100,height: 150,),
                    // RunningTravelCard(width: screenWidth-100,height: 150,),
                    // RunningTravelCard(width: screenWidth-100,height: 150,),
                  ],
                ),
              ),

              Container(
                height: 500,
                width: screenWidth,
                margin: EdgeInsets.all(25),
                color: Colors.blueAccent,
                child: Markdown(
                  data:
                      '```c++\n#include <iostream>\n#include <vector>\n\nusing namespace std;\n\nint maxSubarraySum(vector<int>& arr) {\n  int max_so_far = INT_MIN;\n  int max_ending_here = 0;\n\n  for (int i = 0; i < arr.size(); i++) {\n    max_ending_here = max_ending_here + arr[i];\n    if (max_so_far < max_ending_here) {\n      max_so_far = max_ending_here;\n    }\n    if (max_ending_here < 0) {\n      max_ending_here = 0;\n    }\n  }\n  return max_so_far;\n}\n\nint main() {\n  vector<int> arr = {1, -2, 3, 4, -5, 6, 7, -8, 9};\n  cout << \"Maximum subarray sum is: \" << maxSubarraySum(arr) << endl;\n\n  return 0;\n}\n```\n\nOutput:\n\n```\nMaximum subarray sum is: 20\n```',
                  styleSheet: MarkdownStyleSheet(
                      p: TextStyle(color: Colors.white),
                      // Change color for regular text
                      strong: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),
                      // Change color for bold text
                      em: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

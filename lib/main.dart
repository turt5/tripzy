import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripzy/widgets/customButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void _onButtonPressed() {
    // This function will be executed when the button is pressed
    print('Button pressed!');
    // You can add your custom logic here
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double parentWidth = MediaQuery.of(context).size.width;
    double parentHeight = MediaQuery.of(context).size.height;
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                // color: Colors.white,
                height: screenHeight * 0.7,
                width: screenWidth,
                child: Stack(
                  children: [
                    Container(
                      width: screenWidth,
                      height: screenHeight * 0.68,
                      // color: Colors.red,
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 15),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        child: Image.asset(
                          'assets/images/boat.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text('TRIPZY',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: parentHeight * 0.18,
                            foreground: Paint()
                              ..shader = LinearGradient(colors: [
                                Colors.white.withAlpha(1),
                                Colors.white,
                                // Solid black
                              ], begin: FractionalOffset.bottomCenter)
                                  .createShader(
                                  const Rect.fromLTWH(0.0, 0.0, 0.0, 150.0)),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.3,
                width: screenWidth,
                // color: Colors.black,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "Discover the World,\nOne Adventure at a Time",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        "Discover New Horizons, Embrace Thrilling\nEncounters, and Create Lasting Memories",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: MyCustomButton(onPressed: _onButtonPressed, buttonText: "Get Started", buttonWidth: screenWidth-50,buttonHeight: 50,),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

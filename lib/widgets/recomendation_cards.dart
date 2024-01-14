import 'package:flutter/cupertino.dart';

class RecommendationCard extends StatelessWidget {
  final String text;
  final String imagePath;

  RecommendationCard({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: const EdgeInsets.only(left: 20,top: 10),
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(230, 230, 230, 100)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 15,),
            Image.asset(imagePath,scale: 1.5,),
            const SizedBox(
              width: 10,
            ),
            Text(text,style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w400
            ),),
            const SizedBox(width: 15,),
          ],
        ),
      ),
    );
  }
}

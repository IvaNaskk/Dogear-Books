import 'package:flutter/material.dart';

class Shelf extends StatelessWidget {
  final String image;
  final String title;
  final String amount;

  const Shelf(this.image, this.title, this.amount);

  @override
  Widget build(BuildContext context) {
    Color customColor = Color(int.parse("15616D", radix: 16) + 0xFF000000);
    Color customColorActive =
        Color(int.parse("C3D1C5", radix: 16) + 0xFF000000);

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8.0,
      ),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: customColorActive,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //bookimage
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRect(
                child: Image.asset(
                  image,
                ),
              ),
            ),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      color: customColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    amount,
                    style: TextStyle(fontSize: 18, color: customColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

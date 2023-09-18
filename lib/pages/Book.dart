import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String image;
  final String author;
  final String title;
  final String format;
  final String genre;
  final String ISBN;
  final String desc;
  final String price;

  const Book(this.image, this.title, this.author, this.format, this.genre,
      this.ISBN, this.desc, this.price);

  @override
  Widget build(BuildContext context) {
    Color customColor = Color(int.parse("15616D", radix: 16) + 0xFF000000);
    Color customColorT = Color(int.parse("001524", radix: 16) + 0xFF000000);

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //bookimage
            ClipRect(
              child: Image.asset(
                image,
              ),
            ),

            //bookname
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 16,
                        color: customColorT,
                        fontWeight: FontWeight.bold),
                  ),

                  //bookauthor
                  Text(
                    author,
                    style: TextStyle(fontSize: 12, color: customColor),
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

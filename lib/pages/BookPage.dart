import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  final VoidCallback onBackButtonPressed;
  final String bookImage;
  final String bookTitle;
  final String bookAuthor;
  final String format;
  final String genre;
  final String isbn;
  final String desc;
  final String price;

  const BookView({
    required this.onBackButtonPressed,
    required this.bookImage,
    required this.bookTitle,
    required this.bookAuthor,
    required this.genre,
    required this.format,
    required this.isbn,
    required this.desc,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    String hexColorBC = "#FCF6E1";
    Color bc =
        Color(int.parse(hexColorBC.substring(1), radix: 16) + 0xFF000000);
    Color customColor = Color(int.parse("15616D", radix: 16) + 0xFF000000);
    Color customColorBT2 = Color(int.parse("FEAD5A", radix: 16) + 0xFF000000);
    Color customColorActive2 =
        Color(int.parse("DFE9E1", radix: 16) + 0xFF000000);
    Color customColorT = Color(int.parse("001524", radix: 16) + 0xFF000000);
    Color customColorT2 = Color(int.parse("78290F", radix: 16) + 0xFF000000);

    return Scaffold(
      backgroundColor: bc,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: bc,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: customColorBT2,
            ),
            child: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left,
                color: customColor,
                size: 35,
              ),
              onPressed: onBackButtonPressed,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(bookImage,
                  height: 390, width: 250, fit: BoxFit.fill),
            ),
            Text(
              bookTitle,
              style: TextStyle(
                fontSize: 24,
                color: customColorT,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              bookAuthor,
              style: TextStyle(
                fontSize: 18,
                color: customColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: customColor, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    price,
                    style: TextStyle(
                      fontSize: 20,
                      color: customColorT,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 90),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(customColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Add to ",
                        style: TextStyle(
                          fontSize: 20,
                          color: customColorActive2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: customColorActive2,
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Overview",
                    style: TextStyle(
                        fontSize: 23,
                        color: customColorT2,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    desc,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      color: customColorT,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Format:",
                        style: TextStyle(
                          fontSize: 23,
                          color: customColorT2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        format,
                        style: TextStyle(
                          fontSize: 23,
                          color: customColorT,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Genre:",
                        style: TextStyle(
                          fontSize: 23,
                          color: customColorT2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        genre,
                        style: TextStyle(
                          fontSize: 23,
                          color: customColorT,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "ISBN:",
                        style: TextStyle(
                          fontSize: 23,
                          color: customColorT2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        isbn,
                        style: TextStyle(
                          fontSize: 23,
                          color: customColorT,
                        ),
                      ),
                    ],
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

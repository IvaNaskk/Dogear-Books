import 'package:flutter/material.dart';

class BookType extends StatelessWidget {
  final String bookType;
  final bool isSelected;

  BookType({
    required this.bookType,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    Color customColor = Color(int.parse("15616D", radix: 16) + 0xFF000000);
    Color customColorBT = Color(int.parse("FF7D00", radix: 16) + 0xFF000000);

    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Text(
        bookType,
        style: TextStyle(
          fontSize: 16,
          color: isSelected ? customColorBT : customColor,
        ),
      ),
    );
  }
}

import 'package:dogear2/data/books.dart';
import 'package:dogear2/pages/Book.dart';
import 'package:dogear2/pages/BookPage.dart';
import 'package:dogear2/pages/BookType.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Books> filteredBooks = books;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      filterBooks();
    });
  }

  void filterBooks() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filteredBooks = books.where((book) {
        final title = book.title.toLowerCase();
        final author = book.author.toLowerCase();
        return title.contains(query) || author.contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    String hexColorBC = "#FCF6E1";
    Color bc =
        Color(int.parse(hexColorBC.substring(1), radix: 16) + 0xFF000000);
    Color customColor = Color(int.parse("15616D", radix: 16) + 0xFF000000);
    Color customColorActive =
        Color(int.parse("C3D1C5", radix: 16) + 0xFF000000);
    Color customColorT = Color(int.parse("001524", radix: 16) + 0xFF000000);
    Color customColorT2 = Color(int.parse("78290F", radix: 16) + 0xFF000000);

    return Scaffold(
      backgroundColor: bc,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: AppBar(
          backgroundColor: bc,
          elevation: 0.0,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(
                image: AssetImage('assests/up.png'),
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back!",
                  style: TextStyle(
                      fontSize: 18,
                      color: customColor,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "What do you want to read today?",
                  style: TextStyle(
                      fontSize: 27,
                      color: customColorT,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: customColor,
                  ),
                  hintText: "Search",
                  filled: true,
                  fillColor: customColorActive,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: customColorActive),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: customColorActive),
                  ),
                  hintStyle: TextStyle(color: customColor),
                ),
                style: TextStyle(color: customColor),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Popular",
              style: TextStyle(
                  fontSize: 30,
                  color: customColorT2,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BookType(
                    bookType: 'Novel',
                    isSelected: true,
                  ),
                  BookType(
                    bookType: 'Self-love',
                    isSelected: false,
                  ),
                  BookType(
                    bookType: 'Science',
                    isSelected: false,
                  ),
                  BookType(
                    bookType: 'Romance',
                    isSelected: false,
                  ),
                  BookType(
                    bookType: 'Crime',
                    isSelected: false,
                  ),
                  BookType(
                    bookType: 'Education',
                    isSelected: false,
                  ),
                  BookType(
                    bookType: 'Psychology',
                    isSelected: false,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filteredBooks.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookView(
                            onBackButtonPressed: () {
                              Navigator.pop(context);
                            },
                            bookImage: "assests/${filteredBooks[index].image}",
                            bookTitle: filteredBooks[index].title,
                            bookAuthor: filteredBooks[index].author,
                            format: filteredBooks[index].format,
                            genre: filteredBooks[index].genre,
                            isbn: filteredBooks[index].ISBN,
                            desc: filteredBooks[index].desc,
                            price: filteredBooks[index].price,
                          ),
                        ),
                      );
                    },
                    child: Book(
                      "assests/${filteredBooks[index].image}",
                      filteredBooks[index].title,
                      filteredBooks[index].author,
                      filteredBooks[index].format,
                      filteredBooks[index].genre,
                      filteredBooks[index].ISBN,
                      filteredBooks[index].desc,
                      filteredBooks[index].price,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

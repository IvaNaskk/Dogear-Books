import 'package:dogear2/data/shelfs.dart';
import 'package:dogear2/pages/Shelf.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  List<Shelfs> filteredShelfs = shelfs;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      filterShelfs();
    });
  }

  void filterShelfs() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filteredShelfs = shelfs.where((shelf) {
        final title = shelf.title.toLowerCase();
        return title.contains(query);
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
    Color customColorActive2 =
        Color(int.parse("DFE9E1", radix: 16) + 0xFF000000);

    return Scaffold(
      backgroundColor: bc,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
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
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "+ Create a new Shelf",
                    style: TextStyle(
                      fontSize: 25,
                      color: customColorActive2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: customColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: filteredShelfs.length,
                  itemBuilder: (context, index) {
                    return Shelf(
                      "assests/${filteredShelfs[index].image}",
                      filteredShelfs[index].title,
                      filteredShelfs[index].amount,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

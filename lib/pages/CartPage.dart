import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    String hexColorBC = "#FCF6E1";
    Color bc =
        Color(int.parse(hexColorBC.substring(1), radix: 16) + 0xFF000000);
    Color customColor = Color(int.parse("15616D", radix: 16) + 0xFF000000);
    Color customColorBT = Color(int.parse("FF7D00", radix: 16) + 0xFF000000);
    Color customColorBT2 = Color(int.parse("FEAD5A", radix: 16) + 0xFF000000);
    Color customColorBT3 = Color(int.parse("FDCE96", radix: 16) + 0xFF000000);
    Color customColorActive =
        Color(int.parse("C3D1C5", radix: 16) + 0xFF000000);
    Color customColorT = Color(int.parse("001524", radix: 16) + 0xFF000000);

    return Scaffold(
      backgroundColor: bc,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
        ),
        title: Text(
          'My Cart',
          style: TextStyle(
              color: customColor, fontSize: 35, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: customColorActive,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRect(
                        child: Image.asset(
                          'assests/book1.png',
                          width: 100,
                          height: 160,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Catcher in the Rye",
                            style: TextStyle(
                              fontSize: 22,
                              color: customColorT,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "J.D. Salinger",
                            style: TextStyle(fontSize: 16, color: customColor),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: customColor, width: 2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              "300 den.",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: customColorT,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: customColorBT2,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: customColor, width: 1)),
                      child: Icon(
                        Icons.close,
                        color: customColor,
                        size: 23,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: customColorActive,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRect(
                        child: Image.asset(
                          'assests/book3.png',
                          width: 100,
                          height: 180,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Lord of the Rings",
                            style: TextStyle(
                              fontSize: 22,
                              color: customColorT,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "J.R.R Tolkein",
                            style: TextStyle(fontSize: 16, color: customColor),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: customColor, width: 2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              "450 den.",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: customColorT,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: customColorBT2,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: customColor, width: 1)),
                      child: Icon(
                        Icons.close,
                        color: customColor,
                        size: 23,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                child: Image.asset(
              "assests/detail.png",
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: customColorBT3,
                  border: Border.all(
                    color: customColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Order Summary",
                          style: TextStyle(
                            fontSize: 20,
                            color: customColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Divider(
                        color: customColor,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Order                                                    750den.",
                        style: TextStyle(
                          fontSize: 16,
                          color: customColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Delivery                                                 100den.",
                        style: TextStyle(
                          fontSize: 16,
                          color: customColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Total                                                        850den.",
                        style: TextStyle(
                            fontSize: 16,
                            color: customColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Check Out",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                    primary: customColorBT,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

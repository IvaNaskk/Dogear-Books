import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser;

  Color bc = Color(int.parse("FCF6E1", radix: 16) + 0xFF000000);
  Color customColor = Color(int.parse("15616D", radix: 16) + 0xFF000000);
  Color customColorBT = Color(int.parse("FF7D00", radix: 16) + 0xFF000000);
  Color customColorActive = Color(int.parse("C3D1C5", radix: 16) + 0xFF000000);
  Color customColorActive2 = Color(int.parse("DFE9E1", radix: 16) + 0xFF000000);

  void _handleLogout(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.of(context).pushReplacementNamed('/auth');
    } catch (e) {
      print('Error during logout: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bc,
      body: Stack(
        children: [
          Positioned(
            top: 270,
            child: Container(
              decoration: BoxDecoration(
                color: customColorActive,
                borderRadius: BorderRadius.circular(35),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Text(
                  "Hello again, " + user!.email.toString() + "!",
                  style: TextStyle(
                    fontSize: 22,
                    color: customColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.teal,
                      width: 5.0,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 140,
                    backgroundImage: AssetImage('assests/profile.png'),
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Profile Settings                ➤",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(350, 60),
                    primary: customColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Payment Settings           ➤",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(350, 60),
                    primary: customColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 80),
                ElevatedButton(
                  onPressed: () {
                    _handleLogout(context);
                  },
                  child: Text(
                    "Log Out",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(350, 60),
                    primary: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

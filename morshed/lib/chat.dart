import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:morshed/home.dart';
import 'package:morshed/profile.dart';

class ChatPage extends StatefulWidget {
  ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  var Sindex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 9),
        child: GNav(
          selectedIndex: Sindex,
          onTabChange: (index) {
            Sindex = index;
          },
          backgroundColor: Colors.white,
          color: Colors.black,
          activeColor: Colors.blue,
          gap: 8,
          padding: EdgeInsets.all(27),
          tabs: [
            GButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              icon: Icons.home,
              text: ("Home"),
            ),
            GButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatPage(),
                    ));
              },
              icon: Icons.wechat_outlined,
              text: "Chat",
            ),
            GButton(
              icon: Icons.search,
              text: ("search"),
            ),
            GButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ));
              },
              icon: Icons.settings,
              text: ("Settings"),
            ),
          ],
        ),
      ),
      body: Center(child: Text("Make it SOON")),
    );
  }
}

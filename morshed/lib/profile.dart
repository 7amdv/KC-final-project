import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:morshed/home.dart';
import 'package:morshed/login.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var Sindex = 3;

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
              icon: Icons.home,
              text: ("Home"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
            ),
            GButton(
              icon: Icons.wechat_outlined,
              text: "Chat",
            ),
            GButton(
              icon: Icons.search,
              text: ("search"),
            ),
            GButton(
              icon: Icons.settings,
              text: ("Settings"),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircleAvatar(backgroundImage: AssetImage("images/me.jpeg")),
                SizedBox(
                  height: 46,
                  width: 46,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFF5F6F9),
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "images/User Icon.svg",
                      width: 22,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text("Privacy",
                          style: TextStyle(color: Colors.black)),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blueGrey,
                    )
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFF5F6F9),
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "images/Bell.svg",
                      width: 22,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text("Notifications",
                          style: TextStyle(color: Colors.black)),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blueGrey,
                    )
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFF5F6F9),
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "images/Question mark.svg",
                      width: 22,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text("Help Center",
                          style: TextStyle(color: Colors.black)),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blueGrey,
                    )
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFF5F6F9),
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "images/Settings.svg",
                      width: 22,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text("Settings",
                          style: TextStyle(color: Colors.black)),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blueGrey,
                    )
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFF5F6F9),
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {},
                child: Row(
                  children: [
                    // SvgPicture.asset(
                    //   "images/Settings.svg",
                    //   width: 22,
                    //   color: Colors.blue,
                    // ),
                    Icon(
                      Icons.history,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text("Purchase History",
                          style: TextStyle(color: Colors.black)),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blueGrey,
                    )
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFF5F6F9),
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "images/Log out.svg",
                      width: 22,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text("Log Out",
                          style: TextStyle(color: Colors.black)),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blueGrey,
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

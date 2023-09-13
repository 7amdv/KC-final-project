import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:morshed/chat.dart';
import 'package:morshed/details.dart';
import 'package:morshed/models/morshed.dart';
import 'package:morshed/profile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var morshed = [
    Morshed(
        name: "Name: Ahmad Orabi",
        imgUrl: "images/pr1.jpeg",
        field: "Field: Web Developer",
        rating: " 4 ",
        lang: "Language: English",
        details:
            "Hello, I'm Ahmad. I'm a web programmer working as a freelancer for 9 years.",
        perMin: '0.50'),
    Morshed(
        name: "Name: Ossama Khatib",
        imgUrl: "images/pr2.webp",
        field: "Field: Councel",
        rating: " 3 ",
        lang: "Language: English",
        details:
            "Hello, I'm Ossama. I'm a Councel working as a freelancer for 6 years.",
        perMin: '0.20'),
    Morshed(
        name: "Name: Steven Jay",
        imgUrl: "images/pr3.jpeg",
        field: "Field: Graphic Designer",
        rating: " 4 ",
        lang: "Swedish",
        details:
            "Hello, I'm Steven. I'm a Graphic Designer working as a freelancer for 2 years.",
        perMin: '0.50'),
    Morshed(
        name: "Name: Mostafa Hosam",
        imgUrl: "images/pr5.jpeg",
        field: "Field: Editor",
        rating: " 2 ",
        lang: "Arabic",
        details:
            "Hello, I'm Mostafa. I'm a Editor working as a freelancer for 10 years.",
        perMin: '0.25')
  ];
  var Sindex = 0;

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        body: Center(
          child: ListView.builder(
              itemCount: morshed.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Divider(),
                      SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailsPage(Omar: morshed[index]),
                              ),
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(morshed[index].imgUrl),
                          radius: 40,
                        ),
                        // Image.asset(morshed[index].imgUrl),
                        title: Column(
                          children: [
                            Text(morshed[index].name),
                            SizedBox(
                              height: 9,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                morshed[index].field,
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                morshed[index].lang,
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Text("Rating:"),
                                  Text(morshed[index].rating),
                                  Text("Stars")
                                ],
                              ),
                            )
                          ],
                        ),
                        // subtitle: Column(
                        //   children: [
                        //     SizedBox(
                        //       height: 5,
                        //     ),
                        //     Align(
                        //       alignment: Alignment.topLeft,
                        //       child: Text(
                        //         morshed[index].field,
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       height: 5,
                        //     ),
                        //     Align(
                        //       alignment: Alignment.topLeft,
                        //       child: Text(
                        //         morshed[index].lang,
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       height: 5,
                        //     ),
                        //     Align(
                        //       alignment: Alignment.topLeft,
                        //       child: Text(morshed[index].rating),
                        //     )
                        //   ],
                        // ),
                        // isThreeLine: true,
                        // subtitle: Text(
                        //   morshed[index].field,
                        //   style: TextStyle(color: Colors.black, fontSize: 15
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                );
              })),
        ));
  }
}

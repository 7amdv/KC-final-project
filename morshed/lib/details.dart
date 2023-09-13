import 'package:flutter/material.dart';
import 'package:morshed/chat.dart';
import 'package:morshed/models/morshed.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.Omar});

  final Morshed Omar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            backgroundImage: AssetImage(Omar.imgUrl),
            radius: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  Omar.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(Omar.field),
                SizedBox(
                  height: 10,
                ),
                Text(Omar.lang),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 65,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Omar.rating,
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Rating",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: 20,
                        indent: 15,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ChatPage(),
                                    ));
                              },
                              icon: Icon(Icons.wechat_outlined)),
                          Text("Messages")
                        ],
                      ),
                      VerticalDivider(
                        width: 20,
                        indent: 15,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text(Omar.perMin), Text("Per/Minute")],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    Omar.details,
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:videochat/homescreen/video_chat_screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    String conferenceID = 'conference_id';
    String userID = Random().nextInt(1000).toString();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        centerTitle: true,
        elevation: 0,
        title: Text("Vide Chat"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => VideoChatScreen(
                      conference_id: conferenceID,
                      user_id: userID,
                    )));
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.video_call), Text("start video call")],
            ),
          ),
        ),
      ),
    );
  }
}

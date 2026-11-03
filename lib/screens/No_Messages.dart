import 'package:flutter/material.dart';

class NoMessages extends StatelessWidget {
  const NoMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 186, 175),
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.arrow_back),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('Receiver name'), Text('Online')],
            ),
          ],
        ),
        actions: [
          Icon(Icons.camera),
          SizedBox(width: 10),
          Icon(Icons.phone_android),
          SizedBox(width: 10),
          Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat_bubble_outline_outlined,
            size: 60,
            color: Colors.grey,
          ),
          SizedBox(height: 10),
          Text(
            "No messages yet",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          Text("Start a conversation!", style: TextStyle(color: Colors.grey)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            color: Colors.white,
            child: Row(
              children: [
                Icon(Icons.emoji_emotions_outlined, color: Colors.grey),

                SizedBox(width: 8),

                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.attach_file)),
                SizedBox(width: 15),
                IconButton(onPressed: () {}, icon: Icon(Icons.camera)),
                SizedBox(width: 10),
                FloatingActionButton(

                  onPressed: () {},
                  
                  child: Icon(Icons.send_and_archive, color: Colors.black),
                  backgroundColor: const Color.fromARGB(179, 12, 129, 8),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

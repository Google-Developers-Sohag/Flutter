import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messenger/model/chat_model.dart';

import 'model/story_model.dart';

class MassengerScreen extends StatelessWidget {
  MassengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items = [
      StoryModel("Mohammad", Colors.red, "assets/images/person_1.png"),
      StoryModel(
          "Maessa Ahmed hhhhhh", Colors.grey, "assets/images/person_2.jpg"),
      StoryModel("Lamyaa", Colors.green, "assets/images/person_3.jpg"),
      StoryModel("Mohammad", Colors.red, "assets/images/person_1.png"),
      StoryModel(
          "Maessa Ahmed hhhhhh", Colors.grey, "assets/images/person_2.jpg"),
      StoryModel("Lamyaa", Colors.green, "assets/images/person_3.jpg"),
      StoryModel("Mohammad", Colors.red, "assets/images/person_1.png"),
      StoryModel(
          "Maessa Ahmed hhhhhh", Colors.grey, "assets/images/person_2.jpg"),
      StoryModel("Lamyaa", Colors.green, "assets/images/person_3.jpg"),
      StoryModel("Mohammad", Colors.red, "assets/images/person_1.png"),
      StoryModel(
          "Maessa Ahmed hhhhhh", Colors.grey, "assets/images/person_2.jpg"),
      StoryModel("Lamyaa", Colors.green, "assets/images/person_3.jpg"),
      StoryModel("Mohammad", Colors.red, "assets/images/person_1.png"),
      StoryModel(
          "Maessa Ahmed hhhhhh", Colors.grey, "assets/images/person_2.jpg"),
      StoryModel("Lamyaa", Colors.green, "assets/images/person_3.jpg"),
    ];

    List chatList = [
      ChatModel(
          "Hossam",
          Colors.cyanAccent,
          "assets/images/person_3.jpg",
          "2:00pm",
          "Hello My name is hossam i study flutter now i'am ready for any thing ......"),
      ChatModel(
          "Hossam",
          Colors.cyanAccent,
          "assets/images/person_3.jpg",
          "2:00pm",
          "Hello My name is hossam i study flutter now i'am ready for any thing ......"),
      ChatModel(
          "Hossam",
          Colors.cyanAccent,
          "assets/images/person_3.jpg",
          "2:00pm",
          "Hello My name is hossam i study flutter now i'am ready for any thing ......"),
      ChatModel(
          "Hossam",
          Colors.cyanAccent,
          "assets/images/person_3.jpg",
          "2:00pm",
          "Hello My name is hossam i study flutter now i'am ready for any thing ......"),

      ChatModel(
          "Hossam",
          Colors.cyanAccent,
          "assets/images/person_3.jpg",
          "2:00pm",
          "Hello My name is hossam i study flutter now i'am ready for any thing ......"),
      ChatModel(
          "Hossam",
          Colors.cyanAccent,
          "assets/images/person_3.jpg",
          "2:00pm",
          "Hello My name is hossam i study flutter now i'am ready for any thing ......"),
      ChatModel(
          "Hossam",
          Colors.cyanAccent,
          "assets/images/person_3.jpg",
          "2:00pm",
          "Hello My name is hossam i study flutter now i'am ready for any thing ......"),
      ChatModel(
          "Hossam",
          Colors.cyanAccent,
          "assets/images/person_3.jpg",
          "2:00pm",
          "Hello My name is hossam i study flutter now i'am ready for any thing ......"),
    ];

    Size size = MediaQuery.of(context).size;
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/person_1.png'),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Chats",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("HELLO");
            },
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              print("HELLO");
            },
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.03),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Search",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: size.height * 0.15,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return buildStory(items[index]);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                  itemCount: items.length,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return buildChat(chatList[index]);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: chatList.length)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStory(StoryModel item) {
    return Container(
      width: 60,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(item.image),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3.0),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: item.color,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            item.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget buildChat(ChatModel item) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(item.image),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 3.0),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: item.color,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    item.message,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(item.time,),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

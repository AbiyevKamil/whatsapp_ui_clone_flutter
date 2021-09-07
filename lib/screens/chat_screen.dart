import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/custom_colors.dart';
import 'package:whatsapp_ui_clone/models/chat_item_model.dart';
import 'package:whatsapp_ui_clone/widgets/chat_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);
  static final String routeName = "/chatscreen";
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatItemModel> chatItems = [
    ChatItemModel(
      timestamp: "7:08PM",
      lastMessage: "Okay ;)",
      userProfilePhoto:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      username: "John",
    ),
    ChatItemModel(
      timestamp: "12:08PM",
      lastMessage: "I will be right there.",
      userProfilePhoto: null,
      username: "Michael",
    ),
    ChatItemModel(
      timestamp: "10:10AM",
      lastMessage: "Thanks)",
      userProfilePhoto: null,
      username: "Luca",
    ),
    ChatItemModel(
      timestamp: "10:00AM",
      lastMessage: "I love you <3",
      userProfilePhoto: null,
      username: "Lily",
    ),
    ChatItemModel(
      timestamp: "10:00PM",
      lastMessage: "Thanks)",
      userProfilePhoto:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      username: "John",
    ),
    ChatItemModel(
      timestamp: "10:10AM",
      lastMessage: "Hi there",
      userProfilePhoto: null,
      username: "Natalie",
    ),
    ChatItemModel(
      timestamp: "3:10AM",
      lastMessage: "See you later",
      userProfilePhoto: null,
      username: "Brother",
    ),
    ChatItemModel(
      timestamp: "Yesterday 1:10PM",
      lastMessage: "okay",
      userProfilePhoto: null,
      username: "Worker",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgBodyColor,
      body: ListView.builder(
        itemCount: chatItems.length,
        itemBuilder: (context, index) {
          ChatItemModel chatItem = chatItems[index];
          String lastmessage = chatItem.lastMessage;
          String username = chatItem.username;
          final userProfilePhoto = chatItem.userProfilePhoto;
          String timestamp = chatItem.timestamp;
          return ChatWidget(
            username: username,
            lastMessage: lastmessage,
            userProfilePhoto: userProfilePhoto,
            timeStamp: timestamp,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.outlineColor,
        onPressed: () {},
        child: Icon(Icons.message),
      ),
    );
  }
}

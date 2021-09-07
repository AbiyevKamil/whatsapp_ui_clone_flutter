import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/custom_colors.dart';
import 'package:whatsapp_ui_clone/models/calls_model.dart';
import 'package:whatsapp_ui_clone/widgets/call_widget.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  List<CallsModel> calls = [
    CallsModel(
      callFromMe: true,
      callType: "VIDEO",
      timestamp: "Today, 6:27 PM",
      userPhotoUrl:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      username: "John",
    ),
    CallsModel(
      callFromMe: true,
      callType: "VOICE",
      timestamp: "Yesterday, 6:27 PM",
      userPhotoUrl:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      username: "Natalie",
    ),
    CallsModel(
      callFromMe: false,
      callType: "VIDEO",
      timestamp: "Today, 10:18 PM",
      userPhotoUrl:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      username: "Mike",
    ),
    CallsModel(
      callFromMe: true,
      callType: "VOICE",
      timestamp: "September 5, 3:15 PM",
      userPhotoUrl:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      username: "Brother",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgBodyColor,
      body: ListView.builder(
        padding: EdgeInsets.only(top: 15),
        itemCount: calls.length,
        itemBuilder: (context, index) {
          final bool callFromMe = calls[index].callFromMe;
          final String timestamp = calls[index].timestamp;
          final String userProfileUrl = calls[index].userPhotoUrl;
          final String callType = calls[index].callType;
          final String username = calls[index].username;
          return CallWidget(
              callFromMe: callFromMe,
              timestamp: timestamp,
              userProfileUrl: userProfileUrl,
              callType: callType,
              username: username);
        },
      ),
      floatingActionButton: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: FloatingActionButton(
                backgroundColor: CustomColors.bgColor,
                onPressed: () {},
                child: Icon(
                  Icons.switch_video,
                  color: Colors.white,
                  size: 23,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              backgroundColor: CustomColors.outlineColor,
              onPressed: () {},
              child: Icon(
                Icons.add_ic_call,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

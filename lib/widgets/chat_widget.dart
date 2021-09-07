import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/custom_colors.dart';

class ChatWidget extends StatefulWidget {
  final String username;
  final userProfilePhoto;
  final String lastMessage;
  final String timeStamp;
  const ChatWidget({
    Key? key,
    this.lastMessage = "Hi, user :)",
    this.timeStamp = "00:01AM",
    this.userProfilePhoto,
    this.username = "Unknown User",
  }) : super(key: key);

  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(widget.userProfilePhoto ??
                            "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.username,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(height: 5),
                        Text(
                          widget.lastMessage,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    widget.timeStamp,
                    style: TextStyle(
                      color: CustomColors.stampColor,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

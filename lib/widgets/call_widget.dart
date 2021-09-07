import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/custom_colors.dart';

class CallWidget extends StatelessWidget {
  final String username;
  final String userProfileUrl;
  final bool callFromMe;
  final String timestamp;
  final String callType;
  const CallWidget(
      {Key? key,
      required this.callFromMe,
      required this.timestamp,
      required this.userProfileUrl,
      required this.callType,
      required this.username})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(userProfileUrl),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          username,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            callFromMe
                                ? Icon(
                                    Icons.call_made,
                                    color: CustomColors.outlineColor,
                                    size: 20,
                                  )
                                : Icon(
                                    Icons.call_received,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              timestamp,
                              style: TextStyle(
                                color: CustomColors.stampColor,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                callType == "VIDEO"
                    ? Icon(
                        Icons.videocam,
                        color: CustomColors.outlineColor,
                        size: 27,
                      )
                    : Icon(
                        Icons.phone,
                        color: CustomColors.outlineColor,
                        size: 27,
                      )
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

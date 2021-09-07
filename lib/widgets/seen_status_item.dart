import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/custom_colors.dart';

class SeenStatusItem extends StatelessWidget {
  final String reviewPhotoUrl;
  final String username;
  final String timestamp;
  const SeenStatusItem(
      {Key? key,
      required this.reviewPhotoUrl,
      required this.timestamp,
      required this.username})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Row(
              children: [
                SizedBox(
                  width: 54,
                  height: 54,
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.6),
                    child: Container(
                      width: 48,
                      height: 48,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(reviewPhotoUrl),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
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
                    SizedBox(
                      height: 5,
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
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

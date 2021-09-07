import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/custom_colors.dart';
import 'package:whatsapp_ui_clone/models/status_item_model.dart';
import 'package:whatsapp_ui_clone/widgets/seen_status_item.dart';
import 'package:whatsapp_ui_clone/widgets/unseen_status_item.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  List<StatusItemModel> unseenStatusItems = [
    StatusItemModel(
      reviewPhotoUrl:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      timestamp: "Today 10:48PM",
      username: "John",
    ),
    StatusItemModel(
      reviewPhotoUrl:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      timestamp: "Today 10:58PM",
      username: "Jacob",
    ),
    StatusItemModel(
      reviewPhotoUrl:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      timestamp: "Today 11:18PM",
      username: "Natalie",
    ),
    StatusItemModel(
      reviewPhotoUrl:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      timestamp: "Today 9:25PM",
      username: "Wick",
    ),
  ];

  List<StatusItemModel> seenStatusItems = [
    StatusItemModel(
      reviewPhotoUrl:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      timestamp: "Today 10:48PM",
      username: "Mike",
    ),
    StatusItemModel(
      reviewPhotoUrl:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      timestamp: "Today 10:58PM",
      username: "Mary",
    ),
    StatusItemModel(
      reviewPhotoUrl:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      timestamp: "Today 11:18PM",
      username: "July",
    ),
    StatusItemModel(
      reviewPhotoUrl:
          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
      timestamp: "Today 9:25PM",
      username: "Jane",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgBodyColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Row(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80"),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: CustomColors.outlineColor,
                              shape: BoxShape.circle),
                          child: Text(
                            "+",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My status",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Tap to add status update",
                        style: TextStyle(
                          color: CustomColors.stampColor,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            if (unseenStatusItems.length > 0)
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Recent updates",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // Unseen statuses here
                  Column(
                    children: unseenStatusItems
                        .map<Widget>(
                          (item) => UnseenStatusItem(
                              reviewPhotoUrl: item.reviewPhotoUrl,
                              timestamp: item.timestamp,
                              username: item.username),
                        )
                        .toList(),
                  ),
                ],
              ),

            // Seen statuses here
            SizedBox(height: 10),
            if (seenStatusItems.length > 0)
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Viewed updates",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 16,
                  ),
                ),
              ),
            SizedBox(
              height: 15,
            ),
            // Unseen statuses here
            Column(
              children: unseenStatusItems
                  .map<Widget>(
                    (item) => SeenStatusItem(
                        reviewPhotoUrl: item.reviewPhotoUrl,
                        timestamp: item.timestamp,
                        username: item.username),
                  )
                  .toList(),
            ),
          ],
        ),
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
                  Icons.edit,
                  color: Colors.white,
                  size: 20,
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
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

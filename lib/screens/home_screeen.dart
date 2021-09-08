import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/custom_colors.dart';
import 'package:whatsapp_ui_clone/screens/calls_screen.dart';
import 'package:whatsapp_ui_clone/screens/camera_screen.dart';
import 'package:whatsapp_ui_clone/screens/chat_screen.dart';
import 'package:whatsapp_ui_clone/screens/status_screen.dart';
import 'package:camera/camera.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.firstCamera}) : super(key: key);
  static final String routeName = "/homescreen";
  final firstCamera;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double tabWidth = width / 5;
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          labelColor: CustomColors.outlineColor,
          unselectedLabelColor: Colors.white,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 3, color: CustomColors.outlineColor),
          ),
          tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            customTab(tabWidth, Text("CHATS")),
            customTab(tabWidth, Text("STATUS")),
            customTab(tabWidth, Text("CALLS")),
          ],
        ),
        title: Text(
          "WhatsApp",
          style: TextStyle(fontSize: 23),
        ),
        actions: [
          SizedBox(
            width: 60,
            height: 60,
            child: InkWell(
              borderRadius: BorderRadius.circular(80),
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 28,
              ),
            ),
          ),
          PopupMenuButton(
            color: CustomColors.bgColor,
            onSelected: (item) => onSelected(item),
            itemBuilder: (context) {
              if (_tabController.index == 0) {
                return [createCustomPopMenuItem(4, "Settings")];
              } else if (_tabController.index == 1) {
                return [
                  createCustomPopMenuItem(0, "New group"),
                  createCustomPopMenuItem(1, "New boradcoast"),
                  createCustomPopMenuItem(2, "Whatsapp Web"),
                  createCustomPopMenuItem(3, "Starred messages"),
                  createCustomPopMenuItem(4, "Settings"),
                ];
              } else if (_tabController.index == 2) {
                return [
                  createCustomPopMenuItem(5, "Status privacy"),
                  createCustomPopMenuItem(4, "Settings"),
                ];
              } else {
                return [
                  createCustomPopMenuItem(5, "Clear call log"),
                  createCustomPopMenuItem(4, "Settings"),
                ];
              }
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(camera: widget.firstCamera),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
    );
  }

  Tab customTab(double tabWidth, Text text) {
    return Tab(
      child: Container(
        alignment: Alignment.center,
        width: tabWidth,
        child: text,
      ),
    );
  }

  PopupMenuItem createCustomPopMenuItem(value, text) {
    return PopupMenuItem(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      value: value,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }

  void onSelected(item) {
    print("object");
  }
}

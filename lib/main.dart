import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/custom_colors.dart';
import 'package:whatsapp_ui_clone/screens/camera_screen.dart';
import 'package:whatsapp_ui_clone/screens/chat_screen.dart';
import 'package:whatsapp_ui_clone/screens/home_screeen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp Clone",
      theme: ThemeData(
        primaryColor: CustomColors.bgColor,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}

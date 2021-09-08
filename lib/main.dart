import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
import 'package:whatsapp_ui_clone/constants/custom_colors.dart';
import 'package:whatsapp_ui_clone/screens/camera_screen.dart';
import 'package:whatsapp_ui_clone/screens/chat_screen.dart';
import 'package:whatsapp_ui_clone/screens/home_screeen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  TorchController().initialize();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;
  runApp(App(
    firstCamera: firstCamera,
  ));
}

class App extends StatelessWidget {
  final firstCamera;
  const App({Key? key, required this.firstCamera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp Clone",
      theme: ThemeData(
        primaryColor: CustomColors.bgColor,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(firstCamera: firstCamera),
      },
    );
  }
}

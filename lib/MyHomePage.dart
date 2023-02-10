import 'package:basic_camera/camera_page.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OOOKKK")),
      body: SafeArea(child: Center(
        child: ElevatedButton(
          onPressed: () async {
            await availableCameras()
            .then((value) =>
            Navigator.push(context, MaterialPageRoute(builder: (_) =>
            CameraPage(cameras: value))));
          },
          child: Text("Resim Çek !"),
        ),
      )),
    );
  }
}
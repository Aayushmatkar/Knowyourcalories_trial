import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key, required this.picture}) : super(key: key);

  final XFile picture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CALORIES DETECTED')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.file(File(picture.path), fit: BoxFit.cover, width: 250),
          const SizedBox(height: 24),
          Text("Product = Apple 100gms ",
            style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
      ),),
          Text("Calories detected = 52cals",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),)
        ]),
      ),
    );
  }
}

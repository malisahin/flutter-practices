import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Image Picker App", home: ImagePickerPlugin());
  }
}

class ImagePickerPlugin extends StatefulWidget {
  @override
  _ImagePickerPluginState createState() => _ImagePickerPluginState();
}

class _ImagePickerPluginState extends State<ImagePickerPlugin> {
  File image;

  Future getImage() async {
    final File picture = await ImagePicker.pickImage(
        source: ImageSource.camera, maxHeight: 300, maxWidth: 300);
    setState(() {
      image = picture;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Take a picture')),
      body: Center(
          child: image == null
              ? Text('Smash the Camera Button take a picture')
              : Image.file(image)),
      drawer: Text('This is a drawer'),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}

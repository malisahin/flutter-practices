import 'package:combine_mobile/sections/isolates/isolates-photo.dart';
import 'package:flutter/material.dart';

class PhotoGrid extends StatelessWidget {
  final List<Photo> photos;

  PhotoGrid({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) => Image.network(photos[index].url));
  }
}

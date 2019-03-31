import 'dart:async';

import 'package:combine_mobile/sections/isolates/isolates-photo-repo.dart';
import 'package:combine_mobile/sections/isolates/isolates-photo.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class MockRepo extends PhotoRepo {
  @override
  Future<List<Photo>> fetchPhotos(http.Client client) async {
    return compute(createPhotos, 20);
  }

  List<Photo> createPhotos(int x) {
    return List.generate(x, (i) {
      Photo(
          id: i,
          title: 'example $i',
          url: 'https://placeimg.com/640/480/texch/$i');
    });
  }
}

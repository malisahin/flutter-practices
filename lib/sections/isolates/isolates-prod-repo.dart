import 'dart:async';
import 'dart:convert';

import 'package:combine_mobile/sections/isolates/isolates-photo-repo.dart';
import 'package:combine_mobile/sections/isolates/isolates-photo.dart';
import 'package:http/http.dart' as http;

class ProdRepo extends PhotoRepo {
  static const URL = 'https://jsonplaceholder.typicode.com/photos';

  @override
  Future<List<Photo>> fetchPhotos(http.Client client) async {
    final response = await client.get(URL);

    return parseJson(response.body);
  }

  List<Photo> parseJson(String responseBody) {
    final parsed = json.decode(responseBody);
    return parsed.map((json) => Photo.fromJson(json)).toList();
  }
}

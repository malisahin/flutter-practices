import 'dart:async';

import 'package:combine_mobile/sections/isolates/isolates-photo.dart';
import 'package:http/http.dart' as http;

abstract class PhotoRepo {
  Future<List<Photo>> fetchPhotos(http.Client client);
}

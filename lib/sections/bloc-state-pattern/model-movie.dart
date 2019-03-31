import 'dart:convert';

import 'package:http/http.dart' as http;

class Movie {
  final String title, posterPath, overview;

  Movie(this.title, this.posterPath, this.overview);

  Movie.fromJson(Map json)
      : title = json['title'],
        posterPath = json['poster_path'],
        overview = json['overview'];
}

class API {
  final http.Client _client = http.Client();

  static const String _url =
      'https://api/themoviedb.org/3/search/movie?api_key=api_key&query={1}';

  Future<List<Movie>> get(String query) {
    List<List<Movie>> list = [];

    _client
        .get(Uri.parse(_url.replaceFirst("{1}", query)))
        .then((res) => res.body)
        .then(json.decode)
        .then((json) => json['results'])
        .asStream()
        .map((movies) => {});
    return null;
  }
}

import 'package:combine_mobile/sections/bloc-state-pattern/model-movie.dart';
import 'package:rxdart/rxdart.dart';

class MovieBloc {
  final API api;

  Stream<List<Movie>> _results = Stream.empty();
  Stream<String> _log = ReplaySubject<String>();

  ReplaySubject<String> _query = ReplaySubject<String>();

  Stream<String> get log => _log;

  ReplaySubject<String> get query => _query;

  Stream<List<Movie>> get results => _results;

  MovieBloc(this.api) {
    _results = _query.distinct().asyncMap(api.get).asBroadcastStream();
    _log = Observable(results)
        .withLatestFrom(_query, (_, query) => 'Results for $query')
        .asBroadcastStream();
  }

  void dispose() {
    _query.close();
  }
}

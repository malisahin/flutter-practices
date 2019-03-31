import 'package:combine_mobile/sections/bloc-state-pattern/model-movie.dart';
import 'package:combine_mobile/sections/bloc-state-pattern/movie-bloc.dart';
import 'package:flutter/material.dart';

class MovieProvider extends InheritedWidget {
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
  final MovieBloc movieBloc;

  static MovieBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(MovieProvider) as MovieProvider)
          .movieBloc;

  MovieProvider({Key key, MovieBloc movieBloc, Widget child})
      : this.movieBloc = movieBloc ?? MovieBloc(API()),
        super(child: child, key: key);
}

import 'package:bloc_example/model.dart';
import 'package:bloc_example/bloc.dart';

import 'package:flutter/widgets.dart';

class MovieProvider extends InheritedWidget {
  final MovieBloc movieBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static MovieBloc of(BuildContext context) =>
      (context.dependOnInheritedWidgetOfExactType() as MovieProvider).movieBloc;

  MovieProvider({Key key, MovieBloc movieBloc, Widget child})
      : this.movieBloc = movieBloc ?? MovieBloc(API()),
        super(child: child, key: key);
}

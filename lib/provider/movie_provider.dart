import 'package:flutter/material.dart';
import 'dart:math';
import '../models/movie.dart';

final List<Movie> initialData = List.generate(
    50,
    (index) => Movie(
        title: "Movie $index",
        runtime: "${Random().nextInt(100) + 60} minutes"));

class MovieProvider with ChangeNotifier {
  // All movies (that will be displayed on the Home screen)
  final List<Movie> _movies = initialData;

  // Retrieve all movies
  List<Movie> get movies => _movies;

  // Favorite movies (that will be shown on the MyList screen)
  final List<Movie> _myList = [];

// Retrieve favorite movies
  List<Movie> get myList => _myList;

  void addToList(Movie movie) {
    _myList.add(movie);
    notifyListeners();
  }

  void removeFromList(Movie movie) {
    _myList.remove(movie);
    notifyListeners();
  }
}

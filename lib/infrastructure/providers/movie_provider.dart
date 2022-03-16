import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas_app/core/models/now_playing.dart';
import 'package:peliculas_app/core/res/popular_response.dart';

import '../../core/models/movie.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = '11c9ee04261856df917a368b1a9bcbc5';
  final String _baseURL = 'api.themoviedb.org';
  final String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> onPopularMovies = [];

  MoviesProvider() {
    getOnDisplayMovies();
    getPopularMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseURL, "3/movies/now_playing",
        {'api_key': _apiKey, 'language': _language, 'page': '1'});

    final response = await http.get(url);
    final nowPlayingResponse = NowPlaying.fromJson(response.body);

    onDisplayMovies = nowPlayingResponse.results;

    notifyListeners();
  }

  getPopularMovies() async {
    var url = Uri.https(_baseURL, "3/movie/popular",
        {'api_key': _apiKey, 'language': _language, 'page': 1});

    final response = await http.get(url);
    final popularMovies = PopularResponse.fromJson(response.body);

    onPopularMovies = [...onPopularMovies, ...popularMovies.results];

    notifyListeners();
  }
}

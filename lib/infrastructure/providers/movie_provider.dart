import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {

  String _apiKey = '';
  String _baseURL = '';
  String _language = 'es-ES';

  MoviesProvider() {
    print('MoviesProvider init');

    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https('', unencodedPath)
  }
}

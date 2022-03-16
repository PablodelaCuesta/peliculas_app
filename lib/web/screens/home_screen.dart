import 'package:flutter/material.dart';
import 'package:peliculas_app/infrastructure/providers/movie_provider.dart';
import 'package:provider/provider.dart';

import 'package:peliculas_app/web/widgets/card_swiper.dart';
import 'package:peliculas_app/web/widgets/movie_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Provider
    final moviesProvider = Provider.of<MoviesProvider>(context);

    // Design
    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas en cines'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          )
        ],
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CardSwiper(
            movies: moviesProvider.onDisplayMovies,
          ),
          MovieSlider(),
        ],
      ),
    );
  }
}

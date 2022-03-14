import 'package:flutter/material.dart';
import 'package:peliculas_app/web/widgets/card_swiper.dart';
import 'package:peliculas_app/web/widgets/movie_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          const CardSwiper(),
          const MovieSlider(),
        ],
      ),
    );
  }
}

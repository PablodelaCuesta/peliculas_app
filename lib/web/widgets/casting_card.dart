import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  const CastingCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return const _CastCard();
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
  const _CastCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/150x300'),
              width: 100,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "actor.name",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

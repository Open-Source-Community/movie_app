import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/models/movie_model.dart';

class MovieCard extends StatelessWidget {
  final Movie_model movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        width: 125,
        child: Stack(
          children: [
            SizedBox(
                child: Image.network(
              movie.posterPath,
              fit: BoxFit.fill,
              height: 1000,
              width: 1000,
            )),
            const Icon(Icons.movie),
          ],
        ),
      ),
    );
  }
}

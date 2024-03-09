import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
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
            SizedBox(child: movie.image),
            const Icon(Icons.movie),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/movie_card.dart';

class CategoryWidget extends StatelessWidget {
  final String categoryName;
  final List<Movie> categoryMovies;
  const CategoryWidget(
      {super.key, required this.categoryName, required this.categoryMovies});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 330, 10),
          child: Text(
            categoryName,
            style: TextStyle(
              // backgroundColor: Colors.white,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryMovies.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                child: MovieCard(movie: categoryMovies[index]),
              );
            },
          ),
        )
      ],
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/category_widget.dart';
import 'package:movie_app/widgets/movie_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final Movie movieTest = Movie(
      name: 'One Piece',
      image: Image.network(
        'https://static.wikia.nocookie.net/onepiece/images/b/bd/One_Piece_Live_Action_Epic_Poster.png/revision/latest?cb=20230830194014',
        fit: BoxFit.fill,
        height: 1000,
        width: 1000,
      ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.movie,
              color: Colors.white,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
            height: 500,
            child: movieTest.image,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(9, 20, 9, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(8),
                    // ),
                    backgroundColor: Colors.transparent,
                  ),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      Text(
                        'My List',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 12, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Play'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(9, 20, 9, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(8),
                    // ),
                    backgroundColor: Colors.transparent,
                  ),
                  child: Column(
                    children: const [
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      Text(
                        '  Info  ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          // movieTest.image,
          CategoryWidget(
            categoryName: "Sci-fi",
            categoryMovies: [
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
            ],
          ),
          CategoryWidget(
            categoryName: "Drama",
            categoryMovies: [
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
            ],
          ),
          CategoryWidget(
            categoryName: "Action",
            categoryMovies: [
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
              movieTest,
            ],
          ),
        ],
      ),
    );
  }
}

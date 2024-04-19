import 'package:dio/dio.dart';
import 'package:movie_app/models/constants.dart';
import 'package:movie_app/models/movie.dart';

class MovieService {
  final Dio dio;
  MovieService(this.dio);
  
  Future<List<Movie>> getMovies(String category) async {
    try {
      var response = await dio.get(
          'https://api.themoviedb.org/3/movie/$category?api_key=$apiKey');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> moviesData = jsonData['articles'];

      List<Movie> movieList = [];

      for (var movieData in moviesData) {
        Movie movie = Movie.fromMap(jsonData);
        movieList.add(movie);
      }

      return movieList;
    } catch (e) {
      return [];
    }
  }
  
}

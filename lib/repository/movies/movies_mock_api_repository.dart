import 'package:bloc_course/models/movies/movies_model.dart';

abstract class MoviesRepository {
  Future<MoviesModel> fetchMoviesList();
}

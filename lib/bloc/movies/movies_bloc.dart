import 'package:bloc_course/data/api_response/api_response.dart';
import 'package:bloc_course/models/movies/movies_model.dart';
import 'package:bloc_course/repository/movies/movies_mock_api_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'movies_event.dart';

part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesRepository moviesRepository;

  MoviesBloc({required this.moviesRepository})
    : super(MoviesState(moviesList: ApiResponse.loading())) {
    on<MoviesFetched>(fetchMovieListApi);
  }

  Future<void> fetchMovieListApi(
    MoviesFetched event,
    Emitter<MoviesState> emit,
  ) async {
    await moviesRepository
        .fetchMoviesList()
        .then((value) {
          emit(state.copyWith(moviesList: ApiResponse.completed(value)));
        })
        .onError((error, stackTrac) {
          emit(state.copyWith(moviesList: ApiResponse.error(error.toString())));
        });
  }
}

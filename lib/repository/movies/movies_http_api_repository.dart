import 'package:bloc_course/config/app_urls.dart';
import 'package:bloc_course/data/network/network_service_api.dart';
import 'package:bloc_course/models/movies/movies_model.dart';
import 'package:bloc_course/repository/movies/movies_mock_api_repository.dart';

class MoviesHttpApiRepository implements MoviesRepository {
  final _apiServices = NetworkServiceApi();

  @override
  Future<MoviesModel> fetchMoviesList() async {
    final response = await _apiServices.getApi(
      AppUrls.popularMoviesListEndPoint,
    );

    return MoviesModel.fromJson(response);
  }
}

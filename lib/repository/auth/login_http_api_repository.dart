import 'package:bloc_course/config/app_urls.dart';
import 'package:bloc_course/data/network/network_service_api.dart';
import 'package:bloc_course/models/user/user_model.dart';
import 'package:bloc_course/repository/auth/login_repository.dart';

class LoginHttpApiRepository implements LoginRepository {
  final _api = NetworkServiceApi();

  @override
  Future<UserModel> loginApi(dynamic data) async {
    final response = await _api.postApi(AppUrls.loginApi, data);
    return UserModel.fromJson(response);
  }
}

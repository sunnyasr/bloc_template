import 'package:bloc_course/models/user/user_model.dart';
import 'package:bloc_course/repository/auth/login_repository.dart';

class LoginMockApiRepository implements LoginRepository {
  @override
  Future<UserModel> loginApi(dynamic data) async {
    await Future.delayed(Duration(seconds: 3));

    final response = {'token': 'jhdhbvjbfdjsk'};
    return UserModel.fromJson(response);
  }
}

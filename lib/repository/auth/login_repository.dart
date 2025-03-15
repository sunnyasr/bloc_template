import 'package:bloc_course/models/user/user_model.dart';

abstract class LoginRepository {

  Future<UserModel> loginApi(dynamic data) ;
}

abstract class BaseApiServices {
  Future<dynamic> getApi(url);

  Future<dynamic> postApi(url, var data);

  Future<dynamic> deleteApi(url);
}

part of 'api.dart';

class ApiClient {
  String baseUrl;

  ApiClient({this.baseUrl = 'https://jsonplaceholder.typicode.com'});

  Dio client = Dio();

  Future<Response> fetchData({
    required String path,
    required String method,
    Map<String, dynamic>? parameter,
    Object? data,
  }) async {
    String url = baseUrl + path;
    if (method == "POST") {
      return client.post(url, data: data);
    } else if (method == "PUT") {
      return client.put(url, data: data);
    } else if (method == "DELETE") {
      return client.delete(url);
    } else if (method == "PATCH") {
      return client.patch(url, data: data);
    } else {
      return client.get(url);
    }
  }
}

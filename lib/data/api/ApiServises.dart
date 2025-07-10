abstract class ApiServises {
  bool isSuccessful(int statusCode);
  // return statusCode >= 200 && statusCode < 300;

  // fonction get data in api
  Future<dynamic> get(
    String? Path, {
    Object? data,
    Map<String, String>? querPrameters,
  });
  // fonction set data in api
  Future<dynamic> post(
    String? Path, {
    Object? data,
    Map<String, String>? querPrameters,
  });
  // fonction update data in api
  Future<dynamic> patch(
    String? Path, {
    Object? data,
    Map<String, String>? querPrameters,
  });
  // fonction delete data in api
  Future<dynamic> delete(
    String? Path, {
    Object? data,
    Map<String, String>? querPrameters,
  });
}

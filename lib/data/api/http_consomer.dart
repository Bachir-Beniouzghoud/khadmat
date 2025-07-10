import 'dart:convert';
import 'dart:io';
import 'package:get/utils.dart';
import 'package:http/http.dart' as http;
import 'package:khadamat/Constante/static.dart';
import 'package:khadamat/data/api/ApiServises.dart';
import 'package:khadamat/data/model/apiModel.dart';

class HttpConsomer extends ApiServises {
  // ---------------delet data -----------------------
  @override
  Future delete(
    String? Path, {
    Object? data,
    Map<String, String>? querPrameters,
  }) async {
    try {
      final Response = await http.delete(
        Uri.parse(Path!),
        body: data,
        headers: querPrameters,
      );
      return Response;
    } on HttpException catch (e) {}
  }

  // ---------------get data -----------------------
  @override
  Future get(
    String? Path, {
    Object? data,
    Map<String, String>? querPrameters,
  }) async {
    try {
      var Response = await http.get(Uri.parse(Path!), headers: querPrameters);
      if (isSuccessful(Response.statusCode)) {
        var jsionData = json.decode(Response.body);
        Apimodel apimodel = Apimodel.fromJson(jsionData);
        if (apimodel.status == false) {
          dataStatic.ShowMassegsSnakPar("18".tr, apimodel.Massegs!);

          // show Masseges
        } else {
          return apimodel;
        }
      }
    } on SocketException {
      // the Messges =>
      // no internet conected
    }
  }

  // ---------------Updatdata data -----------------------
  @override
  Future patch(
    String? Path, {
    Object? data,
    Map<String, String>? querPrameters,
  }) async {
    var Response = await http.patch(Uri.parse(Path!), headers: querPrameters);
    if (isSuccessful(Response.statusCode)) {
      var jsionData = json.decode(Response.body);
      Apimodel apimodel = Apimodel.fromJson(jsionData);
      if (apimodel.status == false) {
        dataStatic.ShowMassegsSnakPar("18".tr, apimodel.Massegs!);

        // show Masseges
      } else {
        return apimodel;
      }
    }
  }

  // ---------------Post data -----------------------
  @override
  Future post(
    String? Path, {
    Object? data,
    Map<String, String>? querPrameters,
  }) async {
    try {
      var Response = await http.post(
        Uri.parse(Path!),
        headers: querPrameters,
        body: data,
      );
      print("Response: ${Response.body}");

      if (isSuccessful(Response.statusCode)) {
        var jsionData = json.decode(Response.body);
        Apimodel apimodel = Apimodel.fromJson(jsionData);
        if (apimodel.status == false) {
          dataStatic.ShowMassegsSnakPar("18".tr, apimodel.Massegs!);
          // show Masseges
        } else {
          print(apimodel.toJson());
          return apimodel;
        }
      } else {
        // Show Massege in server
      }
    } on HttpException catch (e) {
      dataStatic.ShowMassegsSnakPar("18".tr, e.message);
    }
    // TODO: implement post
  }

  @override
  bool isSuccessful(int statusCode) {
    return statusCode >= 200 && statusCode < 300;
  }
}

import 'dart:developer';
import 'package:auth/login/model/login_request_model.dart';
import 'package:auth/login/model/login_response_model.dart';
import 'package:auth/login/model/register_request_model.dart';
import 'package:auth/login/model/register_response_model.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

/// LoginService responsible to communicate with web-server
/// via authenticaton related APIs
class LoginService extends GetConnect {
  // final String loginUrl = 'http://10.0.2.2:8000/api/login';
  final String loginUrl = 'http://127.0.0.1:8000/api/login';
  final String registerUrl = 'https://reqres.in/api/register';

  Future<LoginResponseModel?> fetchLogin(LoginRequestModel model) async {
    final response = await post(loginUrl, model.toJson(), headers: {
      "Content-Type": 'application/json',
      "Accept": "multipart/form-data"
    });
    inspect(response);
    if (response.statusCode == HttpStatus.ok) {
      // print(response.body['data']['token']);
      return LoginResponseModel.fromJson(response.body['data']);
    } else {
      return null;
    }
  }

  Future<RegisterResponseModel?> fetchRegister(
      RegisterRequestModel model) async {
    final response = await post(registerUrl, model.toJson());

    if (response.statusCode == HttpStatus.ok) {
      return RegisterResponseModel.fromJson(response.body);
    } else {
      return null;
    }
  }
}

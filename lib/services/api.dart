import 'dart:convert';
import 'dart:io';


import 'package:http/http.dart' as http;

import '../config/storage.dart';
import '../models/auth/login_model.dart';
import '../models/auth/token_model.dart';
import '../models/profile/profile_model.dart';


// import '../models/orderL_list_model.dart';

const String baseUrl = "https://forfoodieuat.bimats.com/api/admin/";

Storage storage = Storage();

class API {
  Future<LoginResponseModel> login(LoginModel loginModel) async {
    final response = await http.post(
        Uri.parse('https://forfoodieuat.bimats.com/api/auth/authenticate'),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
        body: json.encode(loginModel.toJson()));
    print(response.statusCode);
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body);

      print("This is Login" + response.body);
      return LoginResponseModel.fromJson(parsed);
    } else {
      throw response.body;
    }
  }

  Future<ProfileModel>  getProfileInfo(String customerId) async {
    String? token = await storage.readSingleValue('token');
    print("Printing " + token!);
    final response = await http.get(
      Uri.parse(baseUrl + 'GetAdminUser?AdminUserId=$customerId'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader: token
      },
    );
    print('get profile');
    print(response.body);
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body)['result'];
      return ProfileModel.fromJson(parsed);
    } else {
      throw response.body;
    }
  }
}




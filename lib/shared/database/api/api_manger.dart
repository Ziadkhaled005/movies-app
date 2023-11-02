import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:moviesapp/models/popular_response.dart';

import '../../constants/constants.dart';

class ApiManger {
 static Future<PopularMovies> getPopularMovies() async {
    try {
      Uri url = Uri.https(AppConstants.baseUrl, AppConstants.popularEndPoint);
      var respose = await http.get(url, headers: {
        AppConstants.authorizationHeader: AppConstants.token,
        AppConstants.acceptHeader: AppConstants.acceptHeaderValue
      });
      PopularMovies data = PopularMovies.fromJson(jsonDecode(respose.body));
      return data;
    } catch (e) {
      rethrow; 
    }
  }

}


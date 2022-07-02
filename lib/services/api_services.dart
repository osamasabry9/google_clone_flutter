import 'dart:convert';


import 'package:google_clone/shared/config/api_json.dart';
import 'package:google_clone/shared/config/api_keys.dart';
import 'package:http/http.dart' as http;

class ApiService {
  bool isDummyData = true;

  Future<Map<String, dynamic>> fetchData(
      {required String query, String start = '0'}) async {
    try {
      if (!isDummyData) {
        String q = query.contains(' ') ? query.split(' ').join('%20') : query;
        final response = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start'),
        );
        if (response.statusCode == 200) {
          return json.decode(response.body);
        }
      }
    } catch (e) {
      print(e.toString());
    }
    return apiResponse;
  }
}

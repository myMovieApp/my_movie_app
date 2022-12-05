import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_movie_app/Model/popular_model.dart';
import 'package:my_movie_app/api_key.dart';

Future<PopularModel> getMovie() async {
  final response = await http.get(
      Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=$api_key'));
  if (response.statusCode == 200) {
    print(response.body);
    return PopularModel.fromJson(json.decode(response.body));
  } else {
    throw Exception('실패');
  }
}

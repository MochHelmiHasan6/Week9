import 'package:http/http.dart' as http;
import 'dart:io';

class HttpService {
  final String apiKey = '1246932b429a348d0806a05f96328f67';
  final String baseUrl = 'https://api.themoviedb.org/3/movie/popular?api_key=';

  Future<String> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      String response = result.body;
      return response;
    } else {
      print("Fail");
      return null;
    }
  }
}

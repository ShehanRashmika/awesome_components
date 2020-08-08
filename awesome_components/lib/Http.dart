import 'package:http/http.dart' as http;

class Http {
  static const String ENDPOINT = "https://free.currconv.com/api/v7/convert?";
  static const String COMPACT = "compact=ultra";
  static const String API_KEY = "apiKey=36dec39034eb4e585c96";

  static Future<http.Response> get(url) async {
    try {
      print(url);

      final response = await http.get(url);

      return response;
    } catch (e) {
      print("fetch get err $e");
    }
  }
}

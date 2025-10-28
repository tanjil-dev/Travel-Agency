import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchHotels() async {
  await Future.delayed(Duration(seconds: 3));
  try {
    final response = await http.get(Uri.parse('https://gist.githubusercontent.com/tanjil-dev/2b4db997964028d3e9c295daa1681647/raw/1cc1aed1d8791a4e1279434c32ebe5f9d490de4b/my-travel-agency-api'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['hotels'];
    } else {
      throw Exception('${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Failed to fetch hotels: $e');
  }
}
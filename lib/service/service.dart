import 'dart:convert';

import 'package:http/http.dart' as http;

class GeneratedPaymentInfo {
  Future<List?> getGeneratedInfo() async {
    var url = "https://fake-valid-cc-data-generator.p.rapidapi.com";
    var endpoint = Uri.parse(url);
    var response = await http.get(endpoint);
    if(response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map;
      final result = json['generated info'] as List;
      return result;
    }else {
      return null;
    }

  }
}
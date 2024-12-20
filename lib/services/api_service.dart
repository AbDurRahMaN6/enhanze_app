import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<Map<String, dynamic>> login(
      String username, String password) async {
    final response = await http.post(
      Uri.parse("https://api.ezuite.com/api/External_Api/Mobile_Api/Invoke"),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "API_Body": [
          {"Unique_Id": "", "Pw": password}
        ],
        "Api_Action": "GetUserData",
        "Company_Code": username,
      }),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to login");
    }
  }
}

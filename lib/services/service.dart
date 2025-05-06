import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService {
  static const String rootUrl =
      'https://avaronn-backend-development-server.pemy8f8ay9m4p.ap-south-1.cs.amazonlightsail.com/test';

  // 1. Send OTP
  static Future<http.Response> sendOtp(
      String countryCode, String phoneNumber) async {
    final url = Uri.parse('$rootUrl/sendOtp');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'country_code': countryCode,
        'phone_number': phoneNumber,
      }),
    );
    return response;
  }

  // 2. Verify OTP
  static Future<http.Response> verifyOtp({
    required String countryCode,
    required String phoneNumber,
    required String otp,
    required String requestId,
    required String user,
    required String fcmToken,
  }) async {
    final url = Uri.parse('$rootUrl/verifyOtp');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'country_code': countryCode,
        'phone_number': phoneNumber,
        'otp': otp,
        'request_id': requestId,
        'user': user,
        'fcm_token': fcmToken,
      }),
    );
    return response;
  }

  // 3. Refresh Token
  static Future<http.Response> refreshToken(String refreshToken) async {
    final url = Uri.parse('$rootUrl/refreshAccessToken');
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'refresh_token': refreshToken,
      },
    );
    return response;
  }

  // Authenticated headers
  static Map<String, String> _authHeaders(String accessToken) => {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      };

  // 4. Get Today PnL
  static Future<http.Response> getTodayPnL(String accessToken) async {
    final url = Uri.parse('$rootUrl/getTodayPorterPnL');
    final response = await http.get(url, headers: _authHeaders(accessToken));
    return response;
  }

  // 5. Get Yesterday PnL
  static Future<http.Response> getYesterdayPnL(String accessToken) async {
    final url = Uri.parse('$rootUrl/getYesterdayPorterPnL');
    final response = await http.get(url, headers: _authHeaders(accessToken));
    return response;
  }

  // 6. Get Monthly PnL
  static Future<http.Response> getMonthlyPnL(String accessToken) async {
    final url = Uri.parse('$rootUrl/getMonthlyPorterPnL');
    final response = await http.get(url, headers: _authHeaders(accessToken));
    return response;
  }

  // 7. Upload File
  static Future<http.Response> uploadFile({
    required String accessToken,
    required String attribute,
    required File file,
  }) async {
    final url = Uri.parse('$rootUrl/uploadFile');
    final request = http.MultipartRequest('POST', url)
      ..headers['Authorization'] = 'Bearer $accessToken'
      ..fields['attribute'] = attribute
      ..files.add(await http.MultipartFile.fromPath('file', file.path));

    final streamedResponse = await request.send();
    return http.Response.fromStream(streamedResponse);
  }

  // 8. Update Name
  static Future<http.Response> updateName({
    required String accessToken,
    required String name,
  }) async {
    final url = Uri.parse('$rootUrl/updateName');
    final response = await http.put(
      url,
      headers: _authHeaders(accessToken),
      body: jsonEncode({'name': name}),
    );
    return response;
  }
}

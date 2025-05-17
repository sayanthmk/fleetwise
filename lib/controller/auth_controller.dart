import 'dart:convert';
import 'package:flutter/material.dart';
import '../services/service.dart';

class OtpProvider extends ChangeNotifier {
  final phoneController = TextEditingController();
  final otpController = TextEditingController();

  bool isLoading = false;
  String requestId = '';
  String result = '';

  Future<void> sendOtp(BuildContext context) async {
    _setLoading(true);
    final response = await ApiService.sendOtp('+91', phoneController.text);
    _setLoading(false);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      requestId = data['request_id'];
      Navigator.pushNamed(context, '/verifyOtp');
    } else {
      _showError(context, 'Failed to send OTP');
    }
  }

  Future<void> verifyOtp(BuildContext context) async {
    _setLoading(true);
    final response = await ApiService.verifyOtp(
      countryCode: '+91',
      phoneNumber: phoneController.text,
      otp: otpController.text,
      requestId: requestId,
      user: 'mfo',
      fcmToken: 'testingfcmtoken',
    );
    _setLoading(false);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      result = 'Access Token: ${data['access_token']}';
    } else {
      result = 'Failed to verify OTP';
    }
    notifyListeners();
  }

  void _setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  void _showError(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}

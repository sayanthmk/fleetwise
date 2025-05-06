import 'package:fleetwise/services/service.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class SendOtpScreen extends StatefulWidget {
  @override
  _SendOtpScreenState createState() => _SendOtpScreenState();
}

class _SendOtpScreenState extends State<SendOtpScreen> {
  final TextEditingController _phoneController = TextEditingController();
  bool isLoading = false;

  void sendOtp() async {
    setState(() => isLoading = true);

    final response = await ApiService.sendOtp('+91', _phoneController.text);

    setState(() => isLoading = false);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final requestId = data['request_id'];

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => VerifyOtpScreen(
            phoneNumber: _phoneController.text,
            requestId: requestId,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to send OTP')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Send OTP')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'Phone Number'),
            ),
            SizedBox(height: 20),
            isLoading
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: sendOtp,
                    child: Text('Send OTP'),
                  ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'api_service.dart';
// import 'dart:convert';

class VerifyOtpScreen extends StatefulWidget {
  final String phoneNumber;
  final String requestId;

  VerifyOtpScreen({required this.phoneNumber, required this.requestId});

  @override
  _VerifyOtpScreenState createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final TextEditingController _otpController = TextEditingController();
  bool isLoading = false;
  String result = '';

  void verifyOtp() async {
    setState(() {
      isLoading = true;
      result = '';
    });

    final response = await ApiService.verifyOtp(
      countryCode: '+91',
      phoneNumber: widget.phoneNumber,
      otp: _otpController.text,
      requestId: widget.requestId,
      user: 'mfo',
      fcmToken: 'testingfcmtoken',
    );

    setState(() => isLoading = false);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() => result = 'Access Token: ${data['access_token']}');
    } else {
      setState(() => result = 'Failed to verify OTP');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Verify OTP')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Phone: ${widget.phoneNumber}'),
            SizedBox(height: 10),
            TextField(
              controller: _otpController,
              decoration: InputDecoration(labelText: 'Enter OTP'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            isLoading
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: verifyOtp,
                    child: Text('Verify OTP'),
                  ),
            SizedBox(height: 20),
            Text(result),
          ],
        ),
      ),
    );
  }
}

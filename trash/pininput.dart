// import 'package:flutter/material.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';
// import 'package:pinput/pinput.dart';

// class AuthScreen extends StatefulWidget {
//   const AuthScreen({super.key});

//   @override
//   State<AuthScreen> createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController otpController = TextEditingController();
//   String initialCountry = 'IN';
//   PhoneNumber number = PhoneNumber(isoCode: 'IN');
//   bool isOtpSent = false;

//   void sendOtp() {
// // Simulate sending OTP
//     setState(() {
//       isOtpSent = true;
//     });
//   }

//   void verifyOtp() {
//     final otp = otpController.text;
// // Here, add logic to verify OTP
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('OTP Verified: $otp')),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Mobile Authentication')),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: isOtpSent ? _buildOtpView() : _buildPhoneInput(),
//       ),
//     );
//   }

//   Widget _buildPhoneInput() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text("Enter your phone number", style: TextStyle(fontSize: 16)),
//         const SizedBox(height: 10),
//         InternationalPhoneNumberInput(
//           onInputChanged: (PhoneNumber number) {
//             this.number = number;
//           },
//           selectorConfig: const SelectorConfig(
//             selectorType: PhoneInputSelectorType.DROPDOWN,
//           ),
//           ignoreBlank: false,
//           autoValidateMode: AutovalidateMode.disabled,
//           selectorTextStyle: const TextStyle(color: Colors.black),
//           initialValue: number,
//           textFieldController: phoneController,
//           formatInput: true,
//           keyboardType: const TextInputType.numberWithOptions(
//               signed: true, decimal: true),
//           inputBorder: const OutlineInputBorder(),
//           onSaved: (PhoneNumber number) {
//             debugPrint('On Saved: $number');
//           },
//         ),
//         const SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: sendOtp,
//           child: const Text("Send OTP"),
//         ),
//       ],
//     );
//   }

//   Widget _buildOtpView() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         const Text("Enter OTP", style: TextStyle(fontSize: 16)),
//         const SizedBox(height: 20),
//         Pinput(
//           controller: otpController,
//           length: 6,
//           // androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
//           defaultPinTheme: PinTheme(
//             width: 56,
//             height: 56,
//             textStyle: const TextStyle(fontSize: 20),
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey),
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//           onCompleted: (pin) => debugPrint('Entered pin: $pin'),
//         ),
//         const SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: verifyOtp,
//           child: const Text("Verify OTP"),
//         ),
//       ],
//     );
//   }
// }

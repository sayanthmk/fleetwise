// import 'package:fleetwise/controller/auth_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class VerifyOtpScreen extends StatelessWidget {
//   const VerifyOtpScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final otpProvider = context.watch<OtpProvider>();

//     return Scaffold(
//       appBar: AppBar(title: const Text('Verify OTP')),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             Text('Phone: ${otpProvider.phoneController.text}'),
//             const SizedBox(height: 10),
//             TextField(
//               controller: otpProvider.otpController,
//               decoration: const InputDecoration(labelText: 'Enter OTP'),
//               keyboardType: TextInputType.number,
//             ),
//             const SizedBox(height: 20),
//             otpProvider.isLoading
//                 ? const CircularProgressIndicator()
//                 : ElevatedButton(
//                     onPressed: () => otpProvider.verifyOtp(context),
//                     child: const Text('Verify OTP'),
//                   ),
//             const SizedBox(height: 20),
//             Text(otpProvider.result),
//           ],
//         ),
//       ),
//     );
//   }
// }

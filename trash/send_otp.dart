// import 'package:fleetwise/controller/auth_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class SendOtpScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final otpProvider = context.watch<OtpProvider>();
//     return Scaffold(
//       appBar: AppBar(title: Text('Send OTP')),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: otpProvider.phoneController,
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(labelText: 'Phone Number'),
//             ),
//             SizedBox(height: 20),
//             otpProvider.isLoading
//                 ? CircularProgressIndicator()
//                 : ElevatedButton(
//                     onPressed: () => otpProvider.sendOtp(context),
//                     child: Text('Send OTP'),
//                   ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:fleetwise/constants/colors.dart';
// import 'package:fleetwise/widgets/custom_textform.dart';
// import 'package:flutter/material.dart';

// class IdentityVerificationScreen extends StatelessWidget {
//   const IdentityVerificationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController namecontroller = TextEditingController();
//     return Scaffold(
//       backgroundColor: FleetWiseColors.scaffoldBackground,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Header with Skip button
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: Row(
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           'Identity & Address proof of owner',
//                           style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xFF304766),
//                           ),
//                         ),
//                         Text(
//                           'Raman Ji, get started with document upload!',
//                           style: TextStyle(
//                             fontSize: 13,
//                             color: Colors.grey[600],
//                           ),
//                         ),
//                       ],
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         // Skip functionality
//                       },
//                       child: const Text(
//                         'Skip',
//                         style: TextStyle(
//                           fontSize: 18,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 10),
//               // Welcome text

//               const SizedBox(height: 30),

//               // PAN Card
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Row(
//                       children: [
//                         Text('hello'),
//                         Text(
//                           '*',
//                           style: TextStyle(color: Colors.red),
//                         ),
//                       ],
//                     ),
//                     CustomTextFormField(
//                       controller: namecontroller,
//                       labelText: '',
//                       suffixIcon: const Icon(Icons.cabin),
//                       fill: true,
//                       fillcolor: FleetWiseColors.fillwhite,
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 40),

//               // Submit Button
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: SizedBox(
//                   width: double.infinity,
//                   height: 55,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Handle submit
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF123456),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     child: const Text(
//                       'SUBMIT',
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: FleetWiseColors.fillwhite),
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 30),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:fleetwise/constants/colors.dart';
// import 'package:fleetwise/widgets/custom_textform.dart';
// import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController namecontroller = TextEditingController();
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Text(
//                   'Identity & Address proof of owner',
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xFF304766),
//                   ),
//                 ),
//                 Text(
//                   'Raman Ji, get started with document upload!',
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Colors.grey[600],
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Row(
//                     children: [
//                       Text('hello'),
//                       Text(
//                         '*',
//                         style: TextStyle(color: Colors.red),
//                       ),
//                     ],
//                   ),
//                   CustomTextFormField(
//                     controller: namecontroller,
//                     labelText: '',
//                     suffixIcon: const Icon(Icons.cabin),
//                     fill: true,
//                     fillcolor: FleetWiseColors.fillwhite,
//                   ),
//                 ],
//               ),
//             ),
//             // const SizedBox(height: 20),
//             // CustomTextFormField(
//             //   controller: namecontroller,
//             //   labelText: '',
//             //   fill: true,
//             //   fillcolor: FleetWiseColors.fillwhite,
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:fleetwise/constants/colors.dart';
// import 'package:fleetwise/view/management/item_card.dart';

// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Set status bar color to brown
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       statusBarColor: Color.fromRGBO(148, 113, 107, 1),
//       statusBarIconBrightness: Brightness.light,
//     ));

//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             // Header
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               decoration: const BoxDecoration(
//                 gradient: FleetWiseColors.managementGradiantBrown,
//               ),
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Profit/Loss',
//                           style: TextStyle(
//                               fontSize: 24, fontWeight: FontWeight.bold)),
//                       Text('Fri, 7 Mar',
//                           style: TextStyle(color: Colors.grey, fontSize: 16)),
//                     ],
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Text('₹1,274',
//                           style: TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.greenAccent)),
//                       Text('predicted: ₹1,523',
//                           style: TextStyle(color: Colors.grey, fontSize: 14)),
//                     ],
//                   ),
//                 ],
//               ),
//             ),

//             // Body content
//             Expanded(
//               child: Container(
//                 color: Colors.black,
//                 child: ListView(
//                   padding: const EdgeInsets.all(20),
//                   children: [
//                     const ItemCard(
//                       title: 'Earnings',
//                       subtitle: 'Total revenue generated',
//                       amount: '1523',
//                       icon: Icons.attach_money,
//                       predict: true,
//                       predictedAmount: '2000',
//                     ),
//                     const ItemCard(
//                       title: 'Variable Cost',
//                       subtitle: 'Total cost incurred',
//                       amount: '800',
//                       icon: Icons.money_off,
//                       predict: false,
//                       predictedAmount: '',
//                     ),
//                     const ItemCard(
//                       title: 'Trips Completed',
//                       subtitle: 'Successful trip count',
//                       amount: '45',
//                       icon: Icons.directions_car,
//                       predict: false,
//                       predictedAmount: '',
//                     ),
//                     const ItemCard(
//                       title: 'Vehicles on Road',
//                       subtitle: 'Currently active vehicles',
//                       amount: '12',
//                       icon: Icons.emoji_transportation,
//                       predict: false,
//                       predictedAmount: '',
//                     ),
//                     const ItemCard(
//                       title: 'Distance Travelled',
//                       subtitle: 'Total kilometers covered',
//                       amount: '3,200 km',
//                       icon: Icons.map,
//                       predict: false,
//                       predictedAmount: '',
//                     ),

//                     const SizedBox(height: 20),

//                     // Vehicles Overview
//                     Row(
//                       children: const [
//                         Icon(Icons.local_shipping_outlined,
//                             color: Colors.white, size: 24),
//                         SizedBox(width: 10),
//                         Text('Vehicles Overview',
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white)),
//                       ],
//                     ),
//                     const SizedBox(height: 20),

//                     // Filter Tabs
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [
//                           buildFilterTab('All (26)', true),
//                           const SizedBox(width: 10),
//                           buildFilterTab('Running (02)', false),
//                           const SizedBox(width: 10),
//                           buildFilterTab('Idle (01)', false),
//                           const SizedBox(width: 10),
//                           buildFilterTab('Inactive (05)', false),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 20),

//                     // Vehicle Cards
//                     buildVehicleCard(
//                       vehicleNumber: 'UP 12 AK 3532',
//                       driverName: 'Akash Sharma',
//                       status: 'IDLE',
//                       statusColor: Colors.blue[100]!,
//                       statusTextColor: Colors.blue[800]!,
//                       profit: '₹74,304',
//                       profitColor: Colors.green,
//                       cost: '₹3,83,380',
//                       earnings: '₹4,57,684',
//                       earningsProgress: 1.0,
//                       earningsColor: Colors.teal,
//                     ),

//                     buildVehicleCard(
//                       vehicleNumber: 'UP 12 AK 3248',
//                       driverName: 'Akash Sharma',
//                       status: 'RUNNING',
//                       statusColor: Colors.green[100]!,
//                       statusTextColor: Colors.green[800]!,
//                       profit: '₹74,304',
//                       profitColor: Colors.red,
//                       cost: '₹3,83,380',
//                       earnings: '₹4,57,684',
//                       earningsProgress: 0.3,
//                       earningsColor: Colors.red[400]!,
//                     ),

//                     buildInactiveVehicleCard(
//                       vehicleNumber: 'UP 12 AK 3248',
//                       message: 'No Driver Assigned',
//                     ),

//                     // SOS Card
//                     const SizedBox(height: 20),
//                     Container(
//                       padding: const EdgeInsets.all(14),
//                       decoration: BoxDecoration(
//                         color: const Color(0xFFFFFAE5),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         children: [
//                           Icon(Icons.notifications_active,
//                               color: Colors.red[400]),
//                           const SizedBox(width: 12),
//                           Expanded(
//                             child: RichText(
//                               text: TextSpan(
//                                 style: const TextStyle(
//                                     fontSize: 15, color: Colors.black),
//                                 children: [
//                                   const TextSpan(text: 'SOS call made at '),
//                                   TextSpan(
//                                     text: '12:53 AM',
//                                     style: TextStyle(
//                                       color: Colors.red[400],
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   const TextSpan(text: ' by driver'),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           const Icon(Icons.arrow_forward,
//                               color: Colors.black54),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget buildInactiveVehicleCard({
//     required String vehicleNumber,
//     required String message,
//   }) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 15),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 1,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Vehicle number and status
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 vehicleNumber,
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[700],
//                 ),
//               ),
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                 decoration: BoxDecoration(
//                   color: Colors.red[100],
//                   borderRadius: BorderRadius.circular(6),
//                 ),
//                 child: Text(
//                   'INACTIVE',
//                   style: TextStyle(
//                     color: Colors.red[800],
//                     fontWeight: FontWeight.bold,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),

//           // No Driver Message
//           Row(
//             children: [
//               Container(
//                 width: 4,
//                 height: 20,
//                 color: Colors.red,
//                 margin: const EdgeInsets.only(right: 8),
//               ),
//               Text(
//                 message,
//                 style: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//    Widget buildVehicleCard({
//     required String vehicleNumber,
//     required String driverName,
//     required String status,
//     required Color statusColor,
//     required Color statusTextColor,
//     required String profit,
//     required Color profitColor,
//     required String cost,
//     required String earnings,
//     required double earningsProgress,
//     required Color earningsColor,
//   }) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 15),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 1,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Vehicle number and status
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 vehicleNumber,
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[700],
//                 ),
//               ),
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                 decoration: BoxDecoration(
//                   color: statusColor,
//                   borderRadius: BorderRadius.circular(6),
//                 ),
//                 child: Text(
//                   status,
//                   style: TextStyle(
//                     color: statusTextColor,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),

//           // Driver name
//           Row(
//             children: [
//               Icon(
//                 Icons.airline_seat_recline_normal,
//                 color: Colors.grey[400],
//                 size: 20,
//               ),
//               const SizedBox(width: 8),
//               Text(
//                 driverName,
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey[500],
//                 ),
//               ),
//               const Spacer(),
//               Text(
//                 'Profit / Loss',
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey[500],
//                 ),
//               ),
//             ],
//           ),

//           const Divider(height: 30),

//           // Cost and Earnings
//           Row(
//             children: [
//               Expanded(
//                 flex: 2,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           'Cost',
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.grey[600],
//                           ),
//                         ),
//                         const Spacer(),
//                         Text(
//                           cost,
//                           style: const TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 4),
//                     Container(
//                       height: 10,
//                       decoration: BoxDecoration(
//                         color: Colors.grey[200],
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                     ),
//                     const SizedBox(height: 12),
//                     Row(
//                       children: [
//                         Text(
//                           'Earnings',
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.grey[600],
//                           ),
//                         ),
//                         const Spacer(),
//                         Text(
//                           earnings,
//                           style: const TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 4),
//                     Stack(
//                       children: [
//                         Container(
//                           height: 10,
//                           decoration: BoxDecoration(
//                             color: Colors.grey[200],
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                         ),
//                         FractionallySizedBox(
//                           widthFactor: earningsProgress,
//                           child: Container(
//                             height: 10,
//                             decoration: BoxDecoration(
//                               color: earningsColor,
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(width: 16),
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
//                 decoration: BoxDecoration(
//                   color: profitColor.withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Text(
//                   profit,
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: profitColor,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//   static Widget buildFilterTab(String text, bool isActive) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
//       decoration: BoxDecoration(
//         color: isActive ? const Color(0xFF0A2748) : Colors.white,
//         borderRadius: BorderRadius.circular(10),
//         border:
//             isActive ? null : Border.all(color: Colors.grey.withOpacity(0.3)),
//       ),
//       child: Text(
//         text,
//         style: TextStyle(
//           color: isActive ? Colors.white : Colors.grey[600],
//           fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
//           fontSize: 16,
//         ),
//       ),
//     );
//   }

//   // buildVehicleCard and buildInactiveVehicleCard definitions stay the same
// }


// // // import 'package:flutter/material.dart';

// // // class HomePage extends StatelessWidget {
// // //   const HomePage({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: SafeArea(
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             Padding(
// // //               padding: const EdgeInsets.all(20.0),
// // //               child: Column(
// // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                 children: [
// // //                   const Text(
// // //                     'FleetWise',
// // //                     style: TextStyle(
// // //                       fontSize: 24,
// // //                       fontWeight: FontWeight.bold,
// // //                     ),
// // //                   ),
// // //                   const SizedBox(height: 20),
// // //                   Row(
// // //                     children: [
// // //                       CircleAvatar(
// // //                         backgroundColor: Colors.grey[200],
// // //                         radius: 25,
// // //                         child: const Icon(Icons.person_outline),
// // //                       ),
// // //                       const SizedBox(width: 15),
// // //                       Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                         children: [
// // //                           const Text(
// // //                             'Namaste 🙏',
// // //                             style: TextStyle(
// // //                               color: Colors.grey,
// // //                               fontSize: 16,
// // //                             ),
// // //                           ),
// // //                           const Text(
// // //                             'Raman Ji',
// // //                             style: TextStyle(
// // //                               fontSize: 20,
// // //                               fontWeight: FontWeight.bold,
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //             Expanded(
// // //               child: Container(
// // //                 width: double.infinity,
// // //                 padding: const EdgeInsets.all(20),
// // //                 child: Column(
// // //                   children: [
// // //                     Container(
// // //                       padding: const EdgeInsets.all(20),
// // //                       decoration: BoxDecoration(
// // //                         color: Colors.black87,
// // //                         borderRadius: BorderRadius.circular(20),
// // //                       ),
// // //                       child: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.center,
// // //                         children: [
// // //                           const Text(
// // //                             'Track Your Profit & Loss in',
// // //                             style: TextStyle(
// // //                               color: Colors.white,
// // //                               fontSize: 18,
// // //                             ),
// // //                           ),
// // //                           const Text(
// // //                             'Real-Time!',
// // //                             style: TextStyle(
// // //                               color: Colors.white,
// // //                               fontSize: 24,
// // //                               fontWeight: FontWeight.bold,
// // //                             ),
// // //                           ),
// // //                           const SizedBox(height: 20),
// // //                           Image.asset(
// // //                             'assets/images/profit_loss_preview.png',
// // //                             height: 200,
// // //                             fit: BoxFit.contain,
// // //                           ),
// // //                           const Text(
// // //                             'See your profit and loss grow\nas your vehicle runs!',
// // //                             textAlign: TextAlign.center,
// // //                             style: TextStyle(
// // //                               color: Colors.white70,
// // //                               fontSize: 16,
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                     const SizedBox(height: 20),
// // //                     Row(
// // //                       children: [
// // //                         Expanded(
// // //                           child: ElevatedButton.icon(
// // //                             onPressed: () {},
// // //                             icon: const Icon(Icons.add),
// // //                             label: const Text('Add First Vehicle'),
// // //                             style: ElevatedButton.styleFrom(
// // //                               padding: const EdgeInsets.symmetric(vertical: 15),
// // //                               shape: RoundedRectangleBorder(
// // //                                 borderRadius: BorderRadius.circular(10),
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ),
// // //                         const SizedBox(width: 10),
// // //                         Expanded(
// // //                           child: ElevatedButton.icon(
// // //                             onPressed: () {},
// // //                             icon: const Icon(Icons.person_add),
// // //                             label: const Text('Add First Driver'),
// // //                             style: ElevatedButton.styleFrom(
// // //                               padding: const EdgeInsets.symmetric(vertical: 15),
// // //                               shape: RoundedRectangleBorder(
// // //                                 borderRadius: BorderRadius.circular(10),
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //       bottomNavigationBar: BottomNavigationBar(
// // //         currentIndex: 0,
// // //         type: BottomNavigationBarType.fixed,
// // //         items: const [
// // //           BottomNavigationBarItem(
// // //             icon: Icon(Icons.home),
// // //             label: 'Home',
// // //           ),
// // //           BottomNavigationBarItem(
// // //             icon: Icon(Icons.local_shipping),
// // //             label: 'Vehicles',
// // //           ),
// // //           BottomNavigationBarItem(
// // //             icon: Icon(Icons.person),
// // //             label: 'Drivers',
// // //           ),
// // //           BottomNavigationBarItem(
// // //             icon: Icon(Icons.account_circle),
// // //             label: 'Account',
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:fleetwise/constants/colors.dart';
// // import 'package:fleetwise/view/management/item_card.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';

// // class DashboardScreen extends StatelessWidget {
// //   const DashboardScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
// //       statusBarColor: Color.fromRGBO(148, 113, 107, 1),
// //       statusBarIconBrightness: Brightness.light,
// //     ));

// //     return SafeArea(
// //       child: Scaffold(
// //         body: Column(
// //           children: [
// //             // Header Section
// //             Container(
// //               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
// //               decoration: const BoxDecoration(
// //                   gradient: FleetWiseColors.managementGradiantBrown),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   const Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'Profit/Loss',
// //                             style: TextStyle(
// //                               fontSize: 24,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.white,
// //                             ),
// //                           ),
// //                           Text(
// //                             'Fri, 7 Mar',
// //                             style: TextStyle(
// //                               color: Colors.white70,
// //                               fontSize: 16,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                       Column(
// //                         crossAxisAlignment: CrossAxisAlignment.end,
// //                         children: [
// //                           Text(
// //                             '₹1,274',
// //                             style: TextStyle(
// //                               fontSize: 24,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.greenAccent,
// //                             ),
// //                           ),
// //                           Text(
// //                             'predicted: ₹1,523',
// //                             style: TextStyle(
// //                               color: Colors.white70,
// //                               fontSize: 14,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),

// //             // Main Scroll Area
// //             Expanded(
// //               child: ListView(
// //                 padding:
// //                     const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
// //                 children: [
// //                   // Item Cards (Repeat with real data)
// //                   ItemCard(
// //                     title: 'Earnings',
// //                     subtitle: 'Total revenue generated',
// //                     amount: '1523',
// //                     icon: Icons.attach_money,
// //                     predict: true,
// //                     predictedAmount: '2000',
// //                   ),
// //                   ItemCard(
// //                     title: 'Variable Cost',
// //                     subtitle: 'Fuel, maintenance etc.',
// //                     amount: '800',
// //                     icon: Icons.money_off,
// //                     predict: true,
// //                     predictedAmount: '1000',
// //                   ),
// //                   ItemCard(
// //                     title: 'Trips Completed',
// //                     subtitle: 'Total trips done this week',
// //                     amount: '23',
// //                     icon: Icons.directions_bus,
// //                     predict: false,
// //                     predictedAmount: '',
// //                   ),
// //                   ItemCard(
// //                     title: 'Vehicles on Road',
// //                     subtitle: 'Currently active',
// //                     amount: '12',
// //                     icon: Icons.local_shipping,
// //                     predict: false,
// //                     predictedAmount: '',
// //                   ),

// //                   // Vehicles Overview Title
// //                   const SizedBox(height: 15),
// //                   const Row(
// //                     children: [
// //                       Icon(Icons.local_shipping_outlined,
// //                           color: Colors.white, size: 24),
// //                       SizedBox(width: 10),
// //                       Text(
// //                         'Vehicles Overview',
// //                         style: TextStyle(
// //                           fontSize: 20,
// //                           fontWeight: FontWeight.bold,
// //                           color: Colors.white,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                   const SizedBox(height: 15),

// //                   // Filter Tabs
// //                   SingleChildScrollView(
// //                     scrollDirection: Axis.horizontal,
// //                     child: Row(
// //                       children: [
// //                         buildFilterTab('All (26)', true),
// //                         const SizedBox(width: 10),
// //                         buildFilterTab('Running (02)', false),
// //                         const SizedBox(width: 10),
// //                         buildFilterTab('Idle (01)', false),
// //                         const SizedBox(width: 10),
// //                         buildFilterTab('Inactive (05)', false),
// //                       ],
// //                     ),
// //                   ),
// //                   const SizedBox(height: 30),

// //                   // Vehicle Cards (replace with your logic)
// //                   buildVehicleCard(
// //                     vehicleNumber: 'UP 12 AK 3532',
// //                     driverName: 'Akash Sharma',
// //                     status: 'IDLE',
// //                     statusColor: Colors.blue[100]!,
// //                     statusTextColor: Colors.blue[800]!,
// //                     profit: '₹74,304',
// //                     profitColor: Colors.green,
// //                     cost: '₹3,83,380',
// //                     earnings: '₹4,57,684',
// //                     earningsProgress: 1.0,
// //                     earningsColor: Colors.teal,
// //                   ),

// //                   // SOS Alert
// //                   Container(
// //                     margin: const EdgeInsets.symmetric(vertical: 15),
// //                     padding: const EdgeInsets.symmetric(
// //                         horizontal: 16, vertical: 14),
// //                     decoration: BoxDecoration(
// //                       color: const Color(0xFFFFFAE5),
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                       children: [
// //                         Row(
// //                           children: [
// //                             Icon(Icons.notifications_active,
// //                                 color: Colors.red[400]),
// //                             const SizedBox(width: 12),
// //                             RichText(
// //                               text: TextSpan(
// //                                 style: const TextStyle(
// //                                     fontSize: 15, color: Colors.grey),
// //                                 children: [
// //                                   const TextSpan(text: 'SOS call made at '),
// //                                   TextSpan(
// //                                     text: '12:53 AM',
// //                                     style: TextStyle(
// //                                       color: Colors.red[400],
// //                                       fontWeight: FontWeight.bold,
// //                                     ),
// //                                   ),
// //                                   const TextSpan(text: ' by driver'),
// //                                 ],
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                         const Icon(Icons.arrow_forward, color: Colors.black54),
// //                       ],
// //                     ),
// //                   ),

// //                   // Running & Inactive Cards
// //                   buildVehicleCard(
// //                     vehicleNumber: 'UP 12 AK 3248',
// //                     driverName: 'Akash Sharma',
// //                     status: 'RUNNING',
// //                     statusColor: Colors.green[100]!,
// //                     statusTextColor: Colors.green[800]!,
// //                     profit: '₹74,304',
// //                     profitColor: Colors.red,
// //                     cost: '₹3,83,380',
// //                     earnings: '₹4,57,684',
// //                     earningsProgress: 0.3,
// //                     earningsColor: Colors.red[400]!,
// //                   ),
// //                   buildInactiveVehicleCard(
// //                     vehicleNumber: 'UP 12 AK 3248',
// //                     message: 'No Driver Assigned',
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   // Dummy method for filter tabs
// //   Widget buildFilterTab(String title, bool isSelected) {
// //     return Container(
// //       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //       decoration: BoxDecoration(
// //         color: isSelected ? Colors.white : Colors.grey[700],
// //         borderRadius: BorderRadius.circular(20),
// //       ),
// //       child: Text(
// //         title,
// //         style: TextStyle(
// //           color: isSelected ? Colors.black : Colors.white,
// //           fontWeight: FontWeight.bold,
// //         ),
// //       ),
// //     );
// //   }

// //   // Dummy method for vehicle card (you should define it properly elsewhere)
// //   Widget buildVehicleCard({
// //     required String vehicleNumber,
// //     required String driverName,
// //     required String status,
// //     required Color statusColor,
// //     required Color statusTextColor,
// //     required String profit,
// //     required Color profitColor,
// //     required String cost,
// //     required String earnings,
// //     required double earningsProgress,
// //     required Color earningsColor,
// //   }) {
// //     return Container(
// //       margin: const EdgeInsets.only(bottom: 15),
// //       padding: const EdgeInsets.all(16),
// //       decoration: BoxDecoration(
// //         color: Colors.grey[850],
// //         borderRadius: BorderRadius.circular(10),
// //       ),
// //       child: Text('Vehicle: $vehicleNumber'), // Replace with real design
// //     );
// //   }

// //   Widget buildInactiveVehicleCard({
// //     required String vehicleNumber,
// //     required String message,
// //   }) {
// //     return Container(
// //       margin: const EdgeInsets.only(bottom: 15),
// //       padding: const EdgeInsets.all(16),
// //       decoration: BoxDecoration(
// //         color: Colors.grey[800],
// //         borderRadius: BorderRadius.circular(10),
// //       ),
// //       child: Text('Inactive: $vehicleNumber\n$message'),
// //     );
// //   }
// // }
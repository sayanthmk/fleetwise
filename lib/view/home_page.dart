import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/phone.png'),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF1A4FD0), Color(0xFF0C2A78)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Status bar area
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       const Text(
              //         '9:27',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 16,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       Row(
              //         children: const [
              //           Icon(Icons.signal_cellular_4_bar,
              //               color: Colors.white, size: 16),
              //           SizedBox(width: 4),
              //           Icon(Icons.wifi, color: Colors.white, size: 16),
              //           SizedBox(width: 4),
              //           Icon(Icons.battery_full, color: Colors.white, size: 16),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

              // App title
              // const Padding(
              //   padding: EdgeInsets.only(top: 24.0),
              //   child: Text(
              //     'FleetWise',
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 32,
              //       fontWeight: FontWeight.bold,
              //       fontStyle: FontStyle.italic,
              //     ),
              //   ),
              // ),

              // User greeting section
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Center(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Namaste 🙏,',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Raman Ji',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Main content area
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Track Your Profit & Loss in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'Real-Time!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        // Phone mockup
                        // Container(
                        //   height: 240,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(30),
                        //   ),
                        //   child: Stack(
                        //     alignment: Alignment.center,
                        //     children: [
                        //       // Phone image - in a real app, use an actual image
                        //       Container(
                        //         width: 260,
                        //         height: 240,
                        //         decoration: BoxDecoration(
                        //           color: Colors.black,
                        //           borderRadius: BorderRadius.circular(30),
                        //           boxShadow: [
                        //             BoxShadow(
                        //               color: Colors.black.withOpacity(0.5),
                        //               blurRadius: 10,
                        //               spreadRadius: 2,
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //       // Notch
                        //       Positioned(
                        //         top: 8,
                        //         child: Container(
                        //           width: 60,
                        //           height: 20,
                        //           decoration: BoxDecoration(
                        //             color: Colors.black,
                        //             borderRadius: BorderRadius.circular(10),
                        //           ),
                        //         ),
                        //       ),
                        //       // Screen content
                        //       Container(
                        //         width: 220,
                        //         height: 190,
                        //         decoration: BoxDecoration(
                        //           gradient: const LinearGradient(
                        //             begin: Alignment.topCenter,
                        //             end: Alignment.bottomCenter,
                        //             colors: [
                        //               Color(0xFF1A4FD0),
                        //               Color(0xFF0C2A78)
                        //             ],
                        //           ),
                        //           borderRadius: BorderRadius.circular(20),
                        //         ),
                        //         child: Stack(
                        //           children: [
                        //             // Mocked up UI elements on the phone screen
                        //             Padding(
                        //               padding: const EdgeInsets.all(12.0),
                        //               child: Column(
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: [
                        //                   Row(
                        //                     mainAxisAlignment:
                        //                         MainAxisAlignment.spaceBetween,
                        //                     children: const [
                        //                       Text(
                        //                         '9:27',
                        //                         style: TextStyle(
                        //                           color: Colors.white,
                        //                           fontSize: 12,
                        //                         ),
                        //                       ),
                        //                       Row(
                        //                         children: [
                        //                           Icon(
                        //                               Icons
                        //                                   .signal_cellular_4_bar,
                        //                               color: Colors.white,
                        //                               size: 10),
                        //                           Icon(Icons.wifi,
                        //                               color: Colors.white,
                        //                               size: 10),
                        //                           Icon(Icons.battery_full,
                        //                               color: Colors.white,
                        //                               size: 10),
                        //                         ],
                        //                       ),
                        //                     ],
                        //                   ),
                        //                   const SizedBox(height: 8),
                        //                   Row(
                        //                     children: [
                        //                       Container(
                        //                         width: 20,
                        //                         height: 20,
                        //                         decoration: BoxDecoration(
                        //                           shape: BoxShape.circle,
                        //                           border: Border.all(
                        //                               color: Colors.white,
                        //                               width: 1),
                        //                         ),
                        //                       ),
                        //                       const SizedBox(width: 5),
                        //                       const Text(
                        //                         'Namaste 🙏,',
                        //                         style: TextStyle(
                        //                           color: Colors.white,
                        //                           fontSize: 8,
                        //                         ),
                        //                       ),
                        //                     ],
                        //                   ),
                        //                   const SizedBox(height: 10),
                        //                   // Tab buttons
                        //                   Row(
                        //                     mainAxisAlignment:
                        //                         MainAxisAlignment.center,
                        //                     children: [
                        //                       Container(
                        //                         padding:
                        //                             const EdgeInsets.symmetric(
                        //                                 horizontal: 8,
                        //                                 vertical: 4),
                        //                         decoration: BoxDecoration(
                        //                           color: Colors.white
                        //                               .withOpacity(0.2),
                        //                           borderRadius:
                        //                               BorderRadius.circular(10),
                        //                         ),
                        //                         child: const Text(
                        //                           'Yesterday',
                        //                           style: TextStyle(
                        //                               color: Colors.white,
                        //                               fontSize: 6),
                        //                         ),
                        //                       ),
                        //                       const SizedBox(width: 5),
                        //                       Container(
                        //                         padding:
                        //                             const EdgeInsets.symmetric(
                        //                                 horizontal: 8,
                        //                                 vertical: 4),
                        //                         decoration: BoxDecoration(
                        //                           color: Colors.white,
                        //                           borderRadius:
                        //                               BorderRadius.circular(10),
                        //                         ),
                        //                         child: const Text(
                        //                           'Today',
                        //                           style: TextStyle(
                        //                               color: Colors.black,
                        //                               fontSize: 6),
                        //                         ),
                        //                       ),
                        //                       const SizedBox(width: 5),
                        //                       Container(
                        //                         padding:
                        //                             const EdgeInsets.symmetric(
                        //                                 horizontal: 8,
                        //                                 vertical: 4),
                        //                         decoration: BoxDecoration(
                        //                           color: Colors.white
                        //                               .withOpacity(0.2),
                        //                           borderRadius:
                        //                               BorderRadius.circular(10),
                        //                         ),
                        //                         child: const Text(
                        //                           'Monthly',
                        //                           style: TextStyle(
                        //                               color: Colors.white,
                        //                               fontSize: 6),
                        //                         ),
                        //                       ),
                        //                     ],
                        //                   ),
                        //                   const SizedBox(height: 10),
                        //                   Row(
                        //                     mainAxisAlignment:
                        //                         MainAxisAlignment.spaceBetween,
                        //                     children: [
                        //                       const Text(
                        //                         'Profit/Loss',
                        //                         style: TextStyle(
                        //                           color: Colors.white,
                        //                           fontSize: 8,
                        //                           fontWeight: FontWeight.bold,
                        //                         ),
                        //                       ),
                        //                       Text(
                        //                         '₹1,274',
                        //                         style: TextStyle(
                        //                           color:
                        //                               Colors.greenAccent[400],
                        //                           fontSize: 8,
                        //                           fontWeight: FontWeight.bold,
                        //                         ),
                        //                       ),
                        //                     ],
                        //                   ),
                        //                   const SizedBox(height: 10),
                        //                   // Earnings card miniature
                        //                   Container(
                        //                     padding: const EdgeInsets.all(6),
                        //                     decoration: BoxDecoration(
                        //                       color: Colors.white,
                        //                       borderRadius:
                        //                           BorderRadius.circular(8),
                        //                     ),
                        //                     child: Row(
                        //                       children: [
                        //                         Container(
                        //                           width: 16,
                        //                           height: 16,
                        //                           decoration:
                        //                               const BoxDecoration(
                        //                             color: Colors.teal,
                        //                             shape: BoxShape.circle,
                        //                           ),
                        //                           child: const Center(
                        //                             child: Text(
                        //                               '₹',
                        //                               style: TextStyle(
                        //                                 color: Colors.white,
                        //                                 fontSize: 8,
                        //                                 fontWeight:
                        //                                     FontWeight.bold,
                        //                               ),
                        //                             ),
                        //                           ),
                        //                         ),
                        //                         const SizedBox(width: 5),
                        //                         Column(
                        //                           crossAxisAlignment:
                        //                               CrossAxisAlignment.start,
                        //                           children: const [
                        //                             Text(
                        //                               'Earnings',
                        //                               style: TextStyle(
                        //                                 color: Colors.black,
                        //                                 fontSize: 6,
                        //                                 fontWeight:
                        //                                     FontWeight.bold,
                        //                               ),
                        //                             ),
                        //                             Text(
                        //                               'Total revenue',
                        //                               style: TextStyle(
                        //                                 color: Colors.grey,
                        //                                 fontSize: 5,
                        //                               ),
                        //                             ),
                        //                           ],
                        //                         ),
                        //                         const Spacer(),
                        //                         const Text(
                        //                           '₹1,523',
                        //                           style: TextStyle(
                        //                             color: Colors.black,
                        //                             fontSize: 6,
                        //                             fontWeight: FontWeight.bold,
                        //                           ),
                        //                         ),
                        //                       ],
                        //                     ),
                        //                   ),
                        //                   const SizedBox(height: 6),
                        //                   // Cost card miniature
                        //                   Container(
                        //                     padding: const EdgeInsets.all(6),
                        //                     decoration: BoxDecoration(
                        //                       color: Colors.white,
                        //                       borderRadius:
                        //                           BorderRadius.circular(8),
                        //                     ),
                        //                     child: Row(
                        //                       children: [
                        //                         Container(
                        //                           width: 16,
                        //                           height: 16,
                        //                           decoration:
                        //                               const BoxDecoration(
                        //                             color: Colors.blue,
                        //                             shape: BoxShape.circle,
                        //                           ),
                        //                           child: const Icon(
                        //                             Icons.monetization_on,
                        //                             color: Colors.white,
                        //                             size: 8,
                        //                           ),
                        //                         ),
                        //                         const SizedBox(width: 5),
                        //                         Column(
                        //                           crossAxisAlignment:
                        //                               CrossAxisAlignment.start,
                        //                           children: const [
                        //                             Text(
                        //                               'Variable Cost',
                        //                               style: TextStyle(
                        //                                 color: Colors.black,
                        //                                 fontSize: 6,
                        //                                 fontWeight:
                        //                                     FontWeight.bold,
                        //                               ),
                        //                             ),
                        //                             Text(
                        //                               'Expenses',
                        //                               style: TextStyle(
                        //                                 color: Colors.grey,
                        //                                 fontSize: 5,
                        //                               ),
                        //                             ),
                        //                           ],
                        //                         ),
                        //                         const Spacer(),
                        //                         const Text(
                        //                           '₹249',
                        //                           style: TextStyle(
                        //                             color: Colors.black,
                        //                             fontSize: 6,
                        //                             fontWeight: FontWeight.bold,
                        //                           ),
                        //                         ),
                        //                       ],
                        //                     ),
                        //                   ),
                        //                 ],
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),

                        // Bottom text
                        const Text(
                          'See your profit and loss grow\nas your vehicle runs!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Action buttons
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Add First Vehicle'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Add First Driver'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // "What you get" section
              Container(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'What You Get On FleetWise:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0A2748),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            // Feature content would go here
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.amber[100],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            // Feature content would go here
                          ),
                        ),
                      ],
                    ),

                    // Bottom navigation
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: const [
                              Icon(Icons.home, color: Color(0xFF0A2748)),
                              Text(
                                'Home',
                                style: TextStyle(
                                  color: Color(0xFF0A2748),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.local_shipping,
                                  color: Colors.grey[400]),
                              Text(
                                'Vehicles',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.person, color: Colors.grey[400]),
                              Text(
                                'Drivers',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.account_circle,
                                  color: Colors.grey[400]),
                              Text(
                                'Account',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

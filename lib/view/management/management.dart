import 'package:fleetwise/constants/colors.dart';
import 'package:fleetwise/view/management/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FleetManagementApp extends StatelessWidget {
  const FleetManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fleet Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Set status bar color to brown
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(148, 113, 107, 1), // brown
      statusBarIconBrightness: Brightness.light, // for white icons
    ));
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: const BoxDecoration(
                  gradient: FleetWiseColors.managementGradiantBrown),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Status bar
                  // const Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       '9:27',
                  //       style: TextStyle(
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //     Row(
                  //       children: [
                  //         Icon(Icons.signal_cellular_alt, size: 16),
                  //         SizedBox(width: 5),
                  //         Icon(Icons.wifi, size: 16),
                  //         SizedBox(width: 5),
                  //         Icon(Icons.battery_full, size: 16),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(height: 20),

                  // User info
                  Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/animation.gif'))
                            // shape: BoxShape.circle,
                            // border: Border.all(color: Colors.white, width: 2),
                            ),
                      ),
                      const SizedBox(width: 15),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Namaste ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '🙏',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                ',',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Raman Ji',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),

                  // Tab buttons
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                            child: Text(
                              'Yesterday',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                            child: Text(
                              'Today',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                            child: Text(
                              'Monthly',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Profit/Loss section
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Profit/Loss',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Fri, 7 Mar',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '₹1,274',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.greenAccent,
                            ),
                          ),
                          Text(
                            'predicted: ₹1,523',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                child: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  children: [
                    // Earnings card
                    ItemCard(
                      title: 'Earnings',
                      subtitle: 'Total revenue generated',
                      amount: '1523',
                      icon: Icons.abc,
                      predict: true,
                      predictedAmount: '2000',
                    ),

                    // Variable Cost card
                    ItemCard(
                      title: 'Earnings',
                      subtitle: 'Total revenue generated',
                      amount: '1523',
                      icon: Icons.abc,
                      predict: true,
                      predictedAmount: '2000',
                    ),

                    // Trips completed card
                    ItemCard(
                      title: 'Earnings',
                      subtitle: 'Total revenue generated',
                      amount: '1523',
                      icon: Icons.abc,
                      predict: true,
                      predictedAmount: '2000',
                    ),

                    // Vehicles on the road card
                    ItemCard(
                      title: 'Earnings',
                      subtitle: 'Total revenue generated',
                      amount: '1523',
                      icon: Icons.abc,
                      predict: true,
                      predictedAmount: '2000',
                    ),

                    // Total distance travelled card
                    ItemCard(
                      title: 'Earnings',
                      subtitle: 'Total revenue generated',
                      amount: '1523',
                      icon: Icons.abc,
                      predict: true,
                      predictedAmount: '2000',
                    ),

                    // Vehicles Overview section
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: const Row(
                        children: [
                          Icon(Icons.local_shipping_outlined,
                              color: Colors.white, size: 24),
                          SizedBox(width: 10),
                          Text(
                            'Vehicles Overview',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom navigation bar
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border(
                  top: BorderSide(color: Colors.grey.shade800, width: 1),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.home, color: Colors.white),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.local_shipping_outlined, color: Colors.grey),
                      Text(
                        'Vehicles',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.person_outline, color: Colors.grey),
                      Text(
                        'Drivers',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.account_circle_outlined, color: Colors.grey),
                      Text(
                        'Account',
                        style: TextStyle(
                          color: Colors.grey,
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
    );
  }
}

import 'package:fleetwise/view/management/item_card.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: const BoxDecoration(color: Colors.black),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Profit/Loss',
                            style: TextStyle(fontSize: 24, color: Colors.white),
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
                                color: Color.fromRGBO(0, 203, 166, 1)),
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
                  children: [
                    // Earnings card
                    const ItemCard(
                      leadcolor: Color.fromRGBO(0, 143, 117, 1),
                      title: 'Earnings',
                      subtitle: 'your approx earning till now',
                      amount: '1523',
                      icon: Icons.currency_rupee,
                      predict: true,
                      predictedAmount: '2000',
                    ),

                    // Variable Cost card
                    const ItemCard(
                      leadcolor: Color.fromRGBO(63, 91, 217, 1),
                      title: 'Variable Cost',
                      subtitle: 'Track expenses to maximise profits',
                      amount: '1523',
                      icon: Icons.savings,
                      predict: true,
                      predictedAmount: '2000',
                    ),

                    // Trips completed card
                    const ItemCard(
                      leadcolor: Color.fromRGBO(18, 46, 70, 1),
                      title: 'No. of trips completed',
                      subtitle: 'Stay updated on progress',
                      amount: '1523',
                      icon: Icons.task,
                      predict: true,
                      predictedAmount: '2000',
                    ),

                    // Vehicles on the road card
                    const ItemCard(
                      leadcolor: Color.fromRGBO(249, 186, 77, 1),
                      title: 'Vehicles on the road',
                      subtitle: 'Active vehicles right now',
                      amount: '1523',
                      icon: Icons.fire_truck,
                      predict: true,
                      predictedAmount: '2000',
                    ),

                    // Total distance travelled card
                    const ItemCard(
                      leadcolor: Color.fromRGBO(175, 82, 222, 1),
                      title: 'Total distance travelled',
                      subtitle: 'Total distance travelled till now!',
                      amount: '1523',
                      icon: Icons.abc,
                      predict: true,
                      predictedAmount: '2000',
                    ),

                    Container(
                      color: Colors.white.withOpacity(.9),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Header Section
                            const Row(
                              children: [
                                Icon(
                                  Icons.local_shipping,
                                  color: Color(0xFF0A2748),
                                  size: 28,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Vehicles Overview',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0A2748),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),

                            // Filter Tabs
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  buildFilterTab('All (26)', true),
                                  const SizedBox(width: 10),
                                  buildFilterTab('Running (02)', false),
                                  const SizedBox(width: 10),
                                  buildFilterTab('Idle (01)', false),
                                  const SizedBox(width: 10),
                                  buildFilterTab('Inactive (05)', false),
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),

                            // Vehicle Card 1 - IDLE
                            buildVehicleCard(
                              vehicleNumber: 'UP 12 AK 3532',
                              driverName: 'Akash Sharma',
                              status: 'IDLE',
                              statusColor: Colors.blue[100]!,
                              statusTextColor: Colors.blue[800]!,
                              profit: '₹74,304',
                              profitColor: Colors.green,
                              cost: '₹3,83,380',
                              earnings: '₹4,57,684',
                              earningsProgress: 1.0,
                              earningsColor: Colors.teal,
                            ),

                            // Vehicle Card 2 - RUNNING
                            buildVehicleCard(
                              vehicleNumber: 'UP 12 AK 3248',
                              driverName: 'Akash Sharma',
                              status: 'RUNNING',
                              statusColor: Colors.green[100]!,
                              statusTextColor: Colors.green[800]!,
                              profit: '₹74,304',
                              profitColor: Colors.red,
                              cost: '₹3,83,380',
                              earnings: '₹4,57,684',
                              earningsProgress: 0.3,
                              earningsColor: Colors.red[400]!,
                            ),

                            // Vehicle Card 3 - INACTIVE
                            buildInactiveVehicleCard(
                              vehicleNumber: 'UP 12 AK 3248',
                              message: 'No Driver Assigned',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFilterTab(String text, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF0A2748) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: isActive ? null : Border.all(color: Colors.grey[300]!),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.grey[500],
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget buildVehicleCard({
    required String vehicleNumber,
    required String driverName,
    required String status,
    required Color statusColor,
    required Color statusTextColor,
    required String profit,
    required Color profitColor,
    required String cost,
    required String earnings,
    required double earningsProgress,
    required Color earningsColor,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        vehicleNumber,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: statusColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          status,
                          style: TextStyle(
                            color: statusTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: profitColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      profit,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: profitColor,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        color: Colors.grey[400],
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        driverName,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Profit / Loss',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),

              const Divider(height: 24),

              // Cost
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Earnings',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: earningsProgress * 100,
                        height: 15,
                        color: Colors.grey[200],
                      ),
                    ],
                  ),
                  Text(
                    earnings,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Earnings
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Earnings',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: earningsProgress * 150,
                        height: 15,
                        color: earningsColor,
                      ),
                    ],
                  ),
                  Text(
                    earnings,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: const BoxDecoration(
              color: Color(0xFFFFFAE5),
              // borderRadius: BorderRadius.circular(8),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.notifications_active,
                    color: Colors.red[400],
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                      children: [
                        const TextSpan(
                          text: 'SOS call made at ',
                        ),
                        TextSpan(
                          text: '12:53 AM',
                          style: TextStyle(
                            color: Colors.red[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const TextSpan(
                          text: ' by driver',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.grey[600],
                size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildInactiveVehicleCard({
    required String vehicleNumber,
    required String message,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Vehicle number and status
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                vehicleNumber,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  'INACTIVE',
                  style: TextStyle(
                    color: Colors.red[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // No Driver Message
          Row(
            children: [
              Container(
                width: 4,
                height: 20,
                color: Colors.red,
                margin: const EdgeInsets.only(right: 8),
              ),
              Text(
                message,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

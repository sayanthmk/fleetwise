import 'package:flutter/material.dart';

// class FleetManagementApp extends StatelessWidget {
//   const FleetManagementApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fleet Management',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.grey[50],
//       ),
//       home: const VehiclesOverviewScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class VehiclesOverviewScreen extends StatelessWidget {
  const VehiclesOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          children: [
            // Header Section
            Row(
              children: [
                Icon(
                  Icons.local_shipping,
                  color: const Color(0xFF0A2748),
                  size: 28,
                ),
                const SizedBox(width: 10),
                Text(
                  'Vehicles Overview',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF0A2748),
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
                  _buildFilterTab('All (26)', true),
                  const SizedBox(width: 10),
                  _buildFilterTab('Running (02)', false),
                  const SizedBox(width: 10),
                  _buildFilterTab('Idle (01)', false),
                  const SizedBox(width: 10),
                  _buildFilterTab('Inactive (05)', false),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Vehicle Card 1 - IDLE
            _buildVehicleCard(
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

            // SOS Alert Card
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFAE5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.notifications_active,
                        color: Colors.red[400],
                        size: 24,
                      ),
                      const SizedBox(width: 12),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
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
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),

            // Vehicle Card 2 - RUNNING
            _buildVehicleCard(
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
            _buildInactiveVehicleCard(
              vehicleNumber: 'UP 12 AK 3248',
              message: 'No Driver Assigned',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterTab(String text, bool isActive) {
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

  Widget _buildVehicleCard({
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
                  color: statusColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: statusTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Driver name
          Row(
            children: [
              Icon(
                Icons.airline_seat_recline_normal,
                color: Colors.grey[400],
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                driverName,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[500],
                ),
              ),
              const Spacer(),
              Text(
                'Profit / Loss',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),

          const Divider(height: 30),

          // Cost and Earnings
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Cost',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        const Spacer(),
                        Text(
                          cost,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Container(
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Text(
                          'Earnings',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        const Spacer(),
                        Text(
                          earnings,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Stack(
                      children: [
                        Container(
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: earningsProgress,
                          child: Container(
                            height: 10,
                            decoration: BoxDecoration(
                              color: earningsColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: profitColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  profit,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: profitColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInactiveVehicleCard({
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

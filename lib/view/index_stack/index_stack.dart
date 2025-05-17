import 'package:fleetwise/constants/colors.dart';
import 'package:fleetwise/view/index_stack/button.dart';
import 'package:fleetwise/view/management/management.dart';
import 'package:flutter/material.dart';

class PageSwitcher extends StatefulWidget {
  const PageSwitcher({super.key});

  @override
  PageSwitcherState createState() => PageSwitcherState();
}

class PageSwitcherState extends State<PageSwitcher> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    const Center(child: DashboardScreen()),
    const Center(child: DashboardScreen()),
    const Center(child: DashboardScreen()),
  ];

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: const BoxDecoration(
                  gradient: FleetWiseColors.homegradiantblue),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Colors.black),
                child: Column(
                  children: [
                    // --- header row ---
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                colorFilter: ColorFilter.linearToSrgbGamma(),
                                image: AssetImage('assets/animation.gif'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Namaste ',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white)),
                                  Text('🙏', style: TextStyle(fontSize: 18)),
                                  Text(',',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey)),
                                ],
                              ),
                              Text(
                                'Raman Ji',
                                style: TextStyle(
                                    fontSize: 24,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ToggleButton(
                          text: 'Yesterday',
                          index: 0,
                          selectedIndex: selectedIndex,
                          onTap: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                          },
                        ),
                        ToggleButton(
                          text: 'Today',
                          index: 1,
                          selectedIndex: selectedIndex,
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },
                        ),
                        ToggleButton(
                          text: 'Monthly',
                          index: 2,
                          selectedIndex: selectedIndex,
                          onTap: () {
                            setState(() {
                              selectedIndex = 2;
                            });
                          },
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    Expanded(
                      child: IndexedStack(
                        index: selectedIndex,
                        children: _pages,
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
}

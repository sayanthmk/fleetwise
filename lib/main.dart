import 'package:fleetwise/controller/auth_controller.dart';
import 'package:fleetwise/view/auth/identity_adress.dart';
import 'package:fleetwise/view/auth/name_field.dart';
import 'package:fleetwise/view/auth/send_otp_screen.dart';
import 'package:fleetwise/view/auth/verify_otp.dart';
import 'package:fleetwise/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:fleetwise/constants/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => OtpProvider()),
      ],
      child: MaterialApp(
        title: 'FleetWise',
        theme: AppTheme.lightTheme,
        home: SentOtp(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

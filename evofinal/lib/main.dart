import 'package:evofinal/ev_station_info.dart';
import 'package:evofinal/profile.dart';
import 'package:evofinal/registration.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Add this import for Firebase
import 'loginpage.dart';

// Initialize Firebase asynchronously
Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure that widget binding is initialized
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EVolve Chargemates',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: RegistrationPage(), // Set the initial screen to LoginPage
    );
  }
}

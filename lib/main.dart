import 'package:Ticket/screens/flight_screen/flight_screen.dart';
import 'package:Ticket/screens/home_screen/home_screen.dart';
import 'package:Ticket/screens/start_screen/start_screen.dart';
import 'package:Ticket/screens/walkthrough01_screen/walkthrough01_screen.dart';
import 'package:Ticket/screens/walkthrough02_screen/walkthrough02_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => StartScreen(),
        '/walkthroughOneScreen': (context) => WalkthroughOneScreen(),
        '/walkthroughTwoScreen': (context) => WalkthroughTwoScreen(),
        '/homeScreen': (context) => HomeScreen(),
        '/flightScreen': (context) => FlightScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travell/Screens/activities_screens.dart';
import 'package:travell/Screens/hotel.dart';
import 'package:travell/Screens/sidebar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/activities',
      routes: {
        ActivitiesScreens.routeName: (context) => const ActivitiesScreens(),
        HotelScreens.routeName: (context) => const HotelScreens(),
      },
      builder: (context, child) {
        return _TravelApp(
          navigator: (child!.key as GlobalKey<NavigatorState>),
          child: child,
        );
      },
    );
  }
}

class _TravelApp extends StatefulWidget {
  const _TravelApp({super.key, required this.navigator, required this.child});

  final GlobalKey<NavigatorState> navigator;
  final Widget child;

  @override
  State<_TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<_TravelApp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF5EDDC),
      body: Row(
        children: [
          Sidebar(
            heigth: heigth,
            width: width,
          ),
          Expanded(
            child: widget.child,
          )
        ],
      ),
    );
  }
}

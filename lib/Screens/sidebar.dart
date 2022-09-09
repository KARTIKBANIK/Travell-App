//SIDE BAR CLASS....

import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar(
      {super.key,
      required this.heigth,
      //required this.navigator,
      required this.width});

  final double heigth;
  final double width;
  //final GlobalKey<NavigatorState> navigator;

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  List<Map> menu = [
    {'title': 'Activities', 'routename': '/activities'},
    {'title': 'Hotels', 'routename': '/hotels'},
    {'title': 'Flights', 'routename': '/flights'},
    {'title': 'Restauraints', 'routename': '/restauraints'},
  ];

  int sideBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: widget.width * 0.2,
        color: Color.fromARGB(255, 58, 165, 138),
        child: Column(
          children: [
            SizedBox(height: widget.heigth * 0.05),
            ListView.builder(
              shrinkWrap: true,
              itemCount: menu.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return RotatedBox(
                  quarterTurns: 3,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        sideBarIndex = index;
                      });
                      //Navigate to New Screens......
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size(100, 50),
                    ),
                    child: Text(
                      menu[index]['title'],
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: (index == sideBarIndex)
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: (index == sideBarIndex)
                                ? Colors.white
                                : Colors.white.withAlpha(200),
                            letterSpacing: 2,
                          ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

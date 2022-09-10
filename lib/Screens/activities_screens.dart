import 'package:flutter/material.dart';

class ActivitiesScreens extends StatefulWidget {
  static var routeName;

  const ActivitiesScreens({super.key});

  @override
  State<ActivitiesScreens> createState() => _ActivitiesScreensState();
}

class _ActivitiesScreensState extends State<ActivitiesScreens> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Activities",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Enjoy your holiday in Coxsbazar",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

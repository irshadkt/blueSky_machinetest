import 'package:blusky_task/resources/style_resources.dart';
import 'package:blusky_task/widgets/top_container_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_bar.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({
    super.key,
  });
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          color: Colors.grey[100],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Browse",
                  style: normalStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      size: 23),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    TopContainerBox(
                        isSelected: true,
                        title: "Devices",
                        icon: Icons.devices),
                    TopContainerBox(
                        isSelected: false,
                        title: "Items",
                        icon: Icons.interpreter_mode_sharp),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Devices ",
                      style: normalStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          size: 23),
                    ),
                    Text(
                      "8",
                      style: normalStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          size: 23),
                    ),
                  ],
                ),
                listItem(context,
                    name: "Jakes's Scooter",
                    carMin: "8",
                    walkMin: "13",
                    percentage: "41",
                    text: "832.9 ft",
                    icon: Icons.bike_scooter),
                listItem(context,
                    name: "My AirPords Max",
                    carMin: "0",
                    walkMin: "0",
                    percentage: "100",
                    text: "132.7 ft",
                    icon: Icons.headphones_rounded)
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.symmetric(vertical: 28.0),
        child: BottomBarListWidget(),
      ),
    );
  }

  GestureDetector listItem(
    BuildContext context, {
    required String name,
    required String carMin,
    required String walkMin,
    required String percentage,
    required String text,
    required IconData icon,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(
              //   color: Colors.grey[400]!,
              // ),
              borderRadius: BorderRadius.circular(22.0)),
          // height: 40,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jake's Scooter",
                      style: normalStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          size: 15),
                    ),
                    Icon(
                      icon,
                      color: Colors.black,
                      size: 45,
                    )
                  ],
                ),
                Row(
                  children: [
                    buildRow(Icons.car_repair_sharp, "$carMin min"),
                    const SizedBox(
                      width: 10,
                    ),
                    buildRow(Icons.nordic_walking, "$walkMin min"),
                    const SizedBox(
                      width: 10,
                    ),
                    buildRow(Icons.battery_3_bar, "$percentage%"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildContainer("Play sound", Icons.play_arrow, Colors.blue),
                    buildContainer(text, Icons.play_arrow, Colors.tealAccent),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainer(String text, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey[100],
          // border: Border.all(
          //   color: Colors.grey[400]!,
          // ),
          borderRadius: BorderRadius.circular(18.0)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 12,
              backgroundColor: color,
              child: Icon(
                icon,
                color: Colors.white,
                size: 12,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: normalStyle(color: Colors.black, size: 15),
            ),
          ],
        ),
      ),
    );
  }

  Row buildRow(IconData icon, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.black,
          size: 15,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          text,
          style: normalStyle(
              fontWeight: FontWeight.w500, color: Colors.black, size: 14),
        ),
      ],
    );
  }
}

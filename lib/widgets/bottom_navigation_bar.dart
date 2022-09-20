import 'package:flutter/material.dart';
class BottomBarListWidget extends StatelessWidget {
  const BottomBarListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0.0,
      currentIndex: 2,
      backgroundColor: Colors.white,
      //fixedColor: Colors.black,
      unselectedLabelStyle:const TextStyle(
        fontSize: 11, fontWeight: FontWeight.w700, ),
      selectedLabelStyle: const TextStyle(
        fontSize: 11, fontWeight: FontWeight.w700,),
      //unselectedLabelStyle: FontWeight.bold,
      selectedIconTheme: const IconThemeData(
        color: Colors.black,
      ),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      unselectedIconTheme:const IconThemeData(color: Colors.grey),
      onTap: (index) {
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              size: 25,
              // color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.devices,
              size: 25,
              // color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.interpreter_mode_sharp,
              size: 25,
              // color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_3x3,
              size: 25,
              // color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.multiple_stop,
              size: 25,
              // color: Colors.black,
            ),
            label: ""),
      ],
    );
  }
}

import 'package:blusky_task/Screens/scend_screen.dart';
import 'package:blusky_task/resources/style_resources.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({
    super.key,
  });
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60,
                child: Icon(
                  Icons.apple,
                  color: Colors.black,
                  size: 60,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                "Ping it.Find it.\n"
                "AirTag",
                style: normalStyle(
                    color: Colors.white, fontWeight: FontWeight.w600, size: 33),
              ),
              Text(
                "Lose your knack for losing things.",
                style: normalStyle(color: Colors.white, size: 16),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(
                      //   color: Colors.grey[400]!,
                      // ),
                      borderRadius: BorderRadius.circular(12.0)),
                  height: 40,
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Get started",
                        style: normalStyle(color: Colors.black, size: 15),
                      ),
                      const Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.black,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

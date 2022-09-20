import 'package:blusky_task/resources/style_resources.dart';
import 'package:flutter/material.dart';

class TopContainerBox extends StatelessWidget {
  final bool isSelected;
  final String title;
  final IconData icon;
  const TopContainerBox({
    Key? key,
    required this.isSelected,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
      child: Container(
       // height: MediaQuery.of(context).size.height / 4.3,
        width: MediaQuery.of(context).size.width / 3.5,
        decoration: BoxDecoration(
            color: isSelected?Colors.black:Colors.white,
            // border: Border.all(
            //   color: Colors.grey[400]!,
            // ),
            borderRadius: BorderRadius.circular(8.0)),
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title,
                    style: normalStyle(
                        size: 15,
                        color:isSelected? Colors.white:Colors.black,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 10,),
                Icon(
                  icon,
                  color:isSelected? Colors.white:Colors.black,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

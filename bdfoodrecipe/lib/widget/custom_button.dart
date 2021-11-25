import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData? icon;
  final String? lebel;
  final Color? color;
  const CustomButton({
    Key? key,
    this.icon,
    this.lebel,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: color,
        child: InkWell(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Icon(icon, color: Colors.white,),
                Text("$lebel", style: TextStyle(color: Colors.white, fontSize: 18),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class NotifWidget extends StatelessWidget {
  const NotifWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.symmetric(horizontal: 3) ,
      width: 34,
      height: 34,
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(Icons.notifications, color: Color.fromRGBO(61, 89, 32, 1)),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(5),
          backgroundColor: Color.fromRGBO(205, 217, 113, 1), // <-- Button color
          foregroundColor: Colors.red, // <-- Splash color
        ),
      ),
    );
  }
}

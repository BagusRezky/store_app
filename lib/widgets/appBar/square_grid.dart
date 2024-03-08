import 'package:flutter/material.dart';

class SquareWidget extends StatelessWidget {
  const SquareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(Icons.grid_view, color: Color.fromRGBO(61, 89, 32, 1)),
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

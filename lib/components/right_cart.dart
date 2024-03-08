import 'package:flutter/material.dart';
import 'package:store_app/styles/font_style.dart';
import 'package:store_app/styles/color_style.dart';

class RightCart extends StatelessWidget {
  final String name;
  final String type;
  final String image;
  final Color color;
  const RightCart({
    Key? key,
    required this.name,
    required this.type,
    required this.image,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(80),
        ),
        color: color,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 16,
            right: 24,
            child: Image.asset(image),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleTextStyle.fw600.copyWith(
                    color: ColorStyle.black,
                    fontSize: 24,
                  ),
                ),
                Text(
                  type,
                  style: GoogleTextStyle.fw400.copyWith(
                    color: ColorStyle.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

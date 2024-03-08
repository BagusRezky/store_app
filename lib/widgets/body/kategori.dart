import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KategoriWidget extends StatelessWidget {
  const KategoriWidget({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenWidth = mediaQuery.size.width;
    double screenHeight = mediaQuery.size.height;

    return Container(
      margin: EdgeInsets.only(top: screenHeight*0.02),
      height: 35,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 32,
            padding: EdgeInsets.symmetric(horizontal: screenWidth*0.01, vertical: screenHeight*0.005),
            margin: EdgeInsets.only(
                left: screenWidth * 0.03, right: screenWidth * 0.015),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color.fromRGBO(61, 89, 32, 1)),
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.grid_view_rounded,
                  color: Color.fromRGBO(206, 217, 113, 1),
                  size: 12,
                ),
                label: Text(
                  'All',
                  style: GoogleFonts.josefinSans(
                    color: Color.fromRGBO(206, 217, 113, 1),
                    fontSize: 10,
                  ),
                )),
          ),
          Container(
            height: 32,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromRGBO(206, 217, 113, 0.16),
            ),
            child: Row(
              children: [
                Image.asset('assets/pisang.png'),
                SizedBox(width: 2,),
                Text(
                  'Pisang',
                  style: GoogleFonts.josefinSans(
                      color: Color.fromRGBO(61, 89, 32, 1)),
                )
              ],
            ),
          ),
          Container(
            height: 32,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromRGBO(206, 217, 113, 0.16),
            ),
            child: Row(
              children: [
                Image.asset('assets/mangga.png'),
                SizedBox(width: 2,),
                Text(
                  'Mangga',
                  style: GoogleFonts.josefinSans(
                      color: Color.fromRGBO(61, 89, 32, 1)),
                ),
              ],
            ),
          ),
          Container(
            height: 32,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromRGBO(206, 217, 113, 0.16),
            ),
            child: Row(
              children: [
                Image.asset('assets/pineapple.png'),
                SizedBox(width: 2,),
                Text(
                  'Nanas',
                  style: GoogleFonts.josefinSans(
                      color: Color.fromRGBO(61, 89, 32, 1)),
                ),
              ],
            ),
          ),
          Container(
            height: 32,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromRGBO(206, 217, 113, 0.16),
            ),
            child: Row(
              children: [
                Image.asset('assets/avocado.png'),
                SizedBox(width: 2,),
                Text(
                  'Alpukat',
                  style: GoogleFonts.josefinSans(
                      color: Color.fromRGBO(61, 89, 32, 1)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
